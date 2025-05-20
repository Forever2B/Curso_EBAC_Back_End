import json

import requests
import pandas as pd

URL = 'https://api.bcb.gov.br/dados/serie/bcdata.sgs.4392/dados'

def extrair_dados():
    try:
        response = requests.get(URL)
        response.raise_for_status()
    except requests.HTTPError as e:
        print('Erro ao buscar dados no URL')
        return
    except Exception as e:
        print(f'Erro genérico: ${str(e)}')
    else:
        dados = json.loads(response.text)[10:]

    df = pd.DataFrame(dados)
    df['data'] = pd.to_datetime(df['data'], format='%d/%m/%Y')
    df['valor'] = df['valor'].astype(float)
    df.to_csv('dados.csv', index=False, sep=';', encoding='utf-8-sig')
extrair_dados()
