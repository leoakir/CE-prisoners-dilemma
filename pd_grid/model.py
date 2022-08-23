import mesa

from agent import PDAgent

def compute_age_diff(model):
    disp_age = 0
    disp_n = 0
    priv_age = 0
    priv_n = 0

    for a, b in model.dead_agents:
        if a == 1:
            disp_n += 1
            disp_age += b
        else:
            priv_n += 1
            priv_age += b

    if priv_n == 0:
        avg_priv_age = 0
    else:
        avg_priv_age = priv_age/priv_n

    if disp_n == 0:
        avg_disp_age = 0
    else:
        avg_disp_age = disp_age/disp_n

    if avg_disp_age == 0: return 0
    else: return (1- avg_priv_age/avg_disp_age/model.penalty)*100

def compute_coop_disp_prop(model):
    l1 = len([a for a in model.schedule.agents if a.move == "C" and a.disp == 1])
    l2 = len([a for a in model.schedule.agents if a.disp == 1])

    if l2 == 0: return 0
    else: return l1/l2
def compute_coop_priv_prop(model):
    l1 = len([a for a in model.schedule.agents if a.move == "C" and a.disp == 0])
    l2 = len([a for a in model.schedule.agents if a.disp == 0])

    if l2 == 0: return 0
    else: return l1/l2
def compute_comp_disp_prop(model):
    l1 = len([a for a in model.schedule.agents if a.move == "D" and a.disp == 1])
    l2 = len([a for a in model.schedule.agents if a.disp == 1])

    if l2 == 0: return 0
    else: return l1/l2
def compute_comp_priv_prop(model):
    l1 = len([a for a in model.schedule.agents if a.move == "D" and a.disp == 0])
    l2 = len([a for a in model.schedule.agents if a.disp == 0])

    if l2 == 0: return 0
    else: return l1/l2

def store_disp_extinction(model):
    if len([a for a in model.schedule.agents if a.disp == 1]) > 0:
        model.disp_duration = model.total_steps

    return model.disp_duration


# def compute_age_standard_deviation(model):



class PdGrid(mesa.Model):
    """Model class for iterated, spatial prisoner's dilemma model."""

    schedule_types = {
        "Sequential": mesa.time.BaseScheduler,
        "Random": mesa.time.RandomActivation,
        "Simultaneous": mesa.time.SimultaneousActivation,
    }

    # This dictionary holds the payoff for this agent,
    # keyed on: (my_move, other_move)

    payoff = {("C", "C"): 2, ("C", "D"): 1, ("D", "C"): 0, ("D", "D"): 3}
    # payoff = {("C", "C"): 1, ("C", "D"): 0, ("D", "C"): 1.6, ("D", "D"): 0}

    def __init__(
        self, width=50, height=50, schedule_type="Sequential", penalty_mul=1.05,
        penalty_max = 100.0, payoffs=None, seed=None
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

        # Create agents
        for x in range(width):
            for y in range(height):
                agent = PDAgent((x, y), self)
                self.grid.place_agent(agent, (x, y))
                self.schedule.add(agent)

        self.datacollector = mesa.DataCollector(
            {
                # "Priviledged_Agents": lambda m: len(
                #     [a for a in m.schedule.agents if a.disp == 0]
                # ),
                # "Dispriviledged_Agents": lambda m: len(
                #     [a for a in m.schedule.agents if a.disp == 1]
                # ),
                # "Cooperating_Priviledged_Agents": compute_coop_priv_prop,
                # "Competing_Priviledged_Agents": compute_comp_priv_prop,
                # "Cooperating_Dispriviledged_Agents": compute_coop_disp_prop,
                # "Competing_Dispriviledged_Agents": compute_comp_disp_prop,
                "Lifecycle_Diff": compute_age_diff,
                "Dispriviledged_Agents_Duration": store_disp_extinction
            }
        )

        self.running = True
        self.datacollector.collect(self)

    def step(self):
        self.schedule.step()
        self.total_steps += 1
        # collect data
        self.datacollector.collect(self)

    def run(self, n):
        """Run the model for n steps."""
        for _ in range(n):
            self.step()
