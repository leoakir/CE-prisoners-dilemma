import mesa


class PDAgent(mesa.Agent):
    """Agent member of the iterated, spatial prisoner's dilemma model."""

    def __init__(self, pos, model, starting_move=None):
        """
        Create a new Prisoner's Dilemma agent.

        Args:
            pos: (x, y) tuple of the agent's position.
            model: model instance
            starting_move: If provided, determines the agent's initial state:
                           C(ooperating) or D(efecting). Otherwise, random.
        """
        super().__init__(pos, model)
        self.pos = pos
        self.score = 0
        self.age = 0
        if starting_move:
            self.move = starting_move
        else:
            if self.model.coop:
                self.move = self.random.choice(["C", "D"])
            else:
                self.move = "D"
            self.next_move = self.move
            self.disp = self.random.choice([0, 1])

    @property
    def isCooroperating(self):
        return self.move == "C"

    def isPenalty(self):
        return self.penalty > 1

    def step(self):
        """Get the best neighbor's move, and change own move accordingly if better than own score."""

        matrixs = self.model.grid.get_neighbors(self.pos, True, include_center=True)
        neighbors = self.model.grid.get_neighbors(self.pos, True, include_center=False)
        best_neighbor = min(matrixs, key=lambda a: a.score)
        self.next_move = best_neighbor.move
        self.age += 1

        if self.score > self.model.max_pen:
            ran = self.random.choice(neighbors)
            if self.model.coop:
                self.move = self.random.choice(["C", "D"])
            else:
                self.move = "D"
            self.next_move = self.move
            self.model.dead_agents.append((self.disp, self.age))
            self.disp = ran.disp
            self.score = 0
            self.age = 0

        if self.model.schedule_type != "Simultaneous":
            self.advance()

    def advance(self):
        self.move = self.next_move
        self.score += self.increment_score()

    def increment_score(self):
        if self.disp:
            self.penalty = self.model.penalty
        else:
            self.penalty = 1.0
        neighbors = self.model.grid.get_neighbors(self.pos, True)
        if self.model.schedule_type == "Simultaneous":
            moves = [neighbor.next_move for neighbor in neighbors]
        else:
            moves = [neighbor.move for neighbor in neighbors]
        return sum(self.penalty * self.model.payoff[(self.move, move)] for move in moves)
