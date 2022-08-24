from mesa import *
from pd_grid.model import PdGrid
import numpy as np

params = {"penalty_mul": (1.00, 1.05, 1.25, 1.5, 2.0), "penalty_max": (50.0, 100.0, 200.0)}

# define a quantidade de experimentos
# que serão repetidos para cada configuração de valores
# para as variáveis (de controle e independentes)
experiments_per_parameter_configuration = 50

# quantidade de passos suficientes para que a simulação
# alcance um estado de equilíbrio (steady state)
max_steps_per_simulation = 600

results = batch_run(
    PdGrid,
    parameters=params,
    iterations=experiments_per_parameter_configuration,
    max_steps=max_steps_per_simulation,
    number_processes=1,
    data_collection_period=-1,
    display_progress=True,
)

import pandas as pd

results_df = pd.DataFrame(results)

# gera uma string com data e hora
from datetime import datetime
now = str(datetime.now()).replace(":","-").replace(" ","-")

# define um prefixo para o nome do arquivo que vai guardar os dados do modelo
# contendo alguns dados dos experimentos
file_name_suffix =  ("_iter_"+str(experiments_per_parameter_configuration)+
                     "_steps_"+str(max_steps_per_simulation)+"_"+
                  now)

# define um prefixo para o nome para o arquivo de dados
model_name_preffix = "PrisonerDilemmaModel"

# define o nome do arquivo
file_name = model_name_preffix+"_model_data"+file_name_suffix+".csv"

results_df.to_csv(file_name)
