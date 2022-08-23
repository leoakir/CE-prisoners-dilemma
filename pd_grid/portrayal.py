
def portrayPDAgent(agent):
    """
    This function is registered with the visualization server to be called
    each tick to indicate how to draw the agent in its current state.
    :param agent:  the agent in the simulation
    :return: the portrayal dictionary
    """
    # 6C6CFF azul claro
    # FF6C6C vermelho claro
    # 0909BC azul escuro
    # BD0909 vermelho escuro
    COLORS = {("C", 0): "#6C6CFF", ("D", 0): "#FF6C6C", ("C", 1): "#0909BC", ("D", 1): "#BD0909"}

    if agent is None:
        raise AssertionError
    return {
        "Shape": "rect",
        "w": 1,
        "h": 1,
        "Filled": "true",
        "Layer": 0,
        "x": agent.pos[0],
        "y": agent.pos[1],
        "Color" : COLORS[agent.move, agent.disp],
        # "Color": "blue" if agent.isCooroperating else "red",
    }
