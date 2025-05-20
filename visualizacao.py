import matplotlib.pyplot as plt

import pandas as pd
import seaborn as sns

def criar_grafico():
    dados = pd.read_csv('dados.csv', sep=';', parse_dates=['data']).head(10)

    sns.set(style="darkgrid")
    sns.lineplot(data=dados, x='data', y='valor', marker='o')
    plt.title('Valor ao longo do tempo')
    plt.xlabel('Data')
    plt.ylabel('Valor')
    plt.xticks(rotation=45)

criar_grafico()
plt.show()