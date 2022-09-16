import mesa

from .portrayal import portrayPDAgent
from .model import PdGrid


# Make a world that is 50x50, on a 500x500 display.
canvas_element = mesa.visualization.CanvasGrid(portrayPDAgent, 50, 50, 500, 500)

model_params = {
    "height": 50,
    "width": 50,
    "coop": mesa.visualization.Checkbox("Cooperation", True),
    "penalty_mul": mesa.visualization.Slider("Penalty", 1.05, 1.0, 2.0, 0.05),
    "penalty_max": mesa.visualization.Slider("Max Penalty", 100.0, 10.0, 200.0, 1.0),
    "schedule_type": mesa.visualization.Choice(
    "Scheduler type",
    value="Sequential",
    choices=list(PdGrid.schedule_types.keys()),
    )
}

chart = mesa.visualization.ChartModule(
    [{
        "Label": "Lifecycle_Diff",
        "Color": "red"
    }
    ],
    data_collector_name="datacollector"
)

chart_extinction = mesa.visualization.ChartModule(
    [{
        "Label": "Avg_Disp_Age",
        "Color": "blue"
    }
    ],
    data_collector_name="datacollector"
)

chart_disp_prop = mesa.visualization.ChartModule(
    [{
        "Label": "Avg_Priv_Age",
        "Color": "green"
    }
    ],
    data_collector_name="datacollector"
)

piechart_priv = mesa.visualization.PieChartModule(
    [{
        "Label": "Cooperating_Priviledged_Agents",
        "Color": "#6C6CFF"
    },
    {
        "Label": "Competing_Priviledged_Agents",
        "Color": "#FF6C6C"
    },
    ],
    data_collector_name="datacollector"
)

piechart_disp = mesa.visualization.PieChartModule(
    [{
        "Label": "Cooperating_Dispriviledged_Agents",
        "Color": "green"
    },
    {
        "Label": "Competing_Dispriviledged_Agents",
        "Color": "yellow"
    }
    ],
    data_collector_name="datacollector"
)


server = mesa.visualization.ModularServer(
    PdGrid, [canvas_element, chart, chart_extinction, chart_disp_prop, piechart_priv, piechart_disp], "Prisoner's Dilemma", model_params
)
