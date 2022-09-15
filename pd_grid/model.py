import mesa

from .agent import PDAgent

def compute_avg_priv_age(model):
    priv_age = 0
    priv_n = 0
    for a, b in model.dead_agents:
        if a == 0:
            priv_n += 1
            priv_age += b

    if priv_n == 0:
        return 0
    else:
        return priv_age/priv_n

def compute_avg_disp_age(model):
    disp_age = 0
    disp_n = 0
    for a, b in model.dead_agents:
        if a == 1:
            disp_n += 1
            disp_age += b

    if disp_n == 0:
        return 0
    else:
        return disp_age/disp_n

def compute_age_diff(model):
    avg_priv_age = compute_avg_priv_age(model)
    avg_disp_age = compute_avg_disp_age(model)

    if avg_priv_age == 0: return 0
    else: return (1-avg_disp_age/avg_priv_age)*100

class PdGrid(mesa.Model):
    """Model class for iterated, spatial prisoner's dilemma model."""

    schedule_types = {
        "Sequential": mesa.time.BaseScheduler,
        "Random": mesa.time.RandomActivation,
        "Simultaneous": mesa.time.SimultaneousActivation,
    }

    # This dictionary holds the payoff for this agent,
    # keyed on: (my_move, other_move)

    # payoff = {("C", "C"): 1.5, ("C", "D"): 1.5, ("D", "C"): 1.5, ("D", "D"): 1.5}
    # payoff = {("C", "C"): 1, ("C", "D"): 3, ("D", "C"): 0, ("D", "D"): 2}
    # payoff = {("C", "C"): 1, ("C", "D"): 0, ("D", "C"): 1.6, ("D", "D"): 0}

    def __init__(
        self, width=50, height=50, schedule_type="Sequential", penalty_mul=1.05,
        penalty_max = 100.0, coop=True, payoffs=None, seed=None
    ):
        """
        Create a new Spatial Prisoners' Dilemma Model.

        Args:
            width, height: Grid size. There will be one agent per grid cell.
            schedule_type: Can be "Sequential", "Random", or "Simultaneous".
                           Determines the agent activation regime.
            payoffs: (optional) Dictionary of (move, neighbor_move) payoffs.
        """
        self.grid = mesa.space.SingleGrid(width, height, torus=True)
        self.schedule_type = schedule_type
        self.schedule = self.schedule_types[self.schedule_type](self)
        self.penalty = penalty_mul
        self.max_pen = penalty_max
        self.total_steps = 0
        self.disp_duration = 0
        self.dead_agents = []
        self.avg_disp = 0
        self.avg_priv = 0

        if coop:
            self.payoff = {("C", "C"): 1, ("C", "D"): 3, ("D", "C"): 0, ("D", "D"): 2}
        else:
            self.payoff = {("C", "C"): 2, ("C", "D"): 2, ("D", "C"): 2, ("D", "D"): 2}

        # Create agents
        for x in range(width):
            for y in range(height):
                agent = PDAgent((x, y), self)
                self.grid.place_agent(agent, (x, y))
                self.schedule.add(agent)

        self.datacollector = mesa.DataCollector(
            {
                "Lifecycle_Diff": compute_age_diff,
                "Avg_Priv_Age": compute_avg_priv_age,
                "Avg_Disp_Age": compute_avg_disp_age
            }
        )

        self.running = True
        self.datacollector.collect(self)

    def step(self):
        self.schedule.step()
        self.total_steps += 1
        # collect data
        self.datacollector.collect(self)
        if len([a for a in self.schedule.agents if a.disp == 1]) == 0:
            self.running = False

    def run(self, n):
        """Run the model for n steps."""
        for _ in range(n):
            self.step()
