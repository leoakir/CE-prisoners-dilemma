import mesa

from .portrayal import portrayPDAgent
from .model import PdGrid


# Make a world that is 50x50, on a 500x500 display.
canvas_element = mesa.visualization.CanvasGrid(portrayPDAgent, 50, 50, 500, 500)

model_params = {
    "height": 50,
    "width": 50,
    "schedule_type": mesa.visualization.Choice(
        "Scheduler type",
        value="Sequential",
        choices=list(PdGrid.schedule_types.keys()),
    ),
    "penalty_mul": mesa.visualization.Slider("Penalty", 1.05, 1.0, 2.0, 0.05),
    "penalty_max": mesa.visualization.Slider("Max Penalty", 100.0, 10.0, 200.0, 1.0)
}

chart = mesa.visualization.ChartModule(
    [{
        "Label": "Lifecycle_Diff",
        "Color": "#FF6C6C"
    }
    ],
    data_collector_name="datacollector"
)

chart_extinction = mesa.visualization.ChartModule(
    [{
        "Label": "Dispriviledged_Agents_Duration",
        "Color": "#6C6CFF"
    }
    ],
    data_collector_name="datacollector"
)

chart_disp_prop = mesa.visualization.ChartModule(
    [{
        "Label": "Dispriviledged_Agents_Proportion",
        "Color": "#6C6CFF"
    }
    ],
    data_collector_name="datacollector"
)

server = mesa.visualization.ModularServer(
    PdGrid, [canvas_element, chart, chart_extinction, chart_disp_prop], "Prisoner's Dilemma", model_params
)
