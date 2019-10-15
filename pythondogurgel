import re
from datetime import datetime
import json
path = input()

with open( path, "r") as f:
    lines = f.readlines()

with open( path, "r") as d:
    lines_ = d.readlines()

pje_1grau={
            "data_início": "",
            "data_fim": "",
            "tempo_decorrido": "",
            "qtd_selecionados": 0,
            "qtd_carregados": 0,
            "qtd_ignorados" : 0
        }
sap_1grau_assu={
            "data_início": "",
            "data_fim": "",
            "tempo_decorrido": "",
            "qtd_selecionados": 0,
            "qtd_carregados": 0,
            "qtd_ignorados" : 0
            }
sap_1grau_caico={
            "data_início": "",
            "data_fim": "",
            "tempo_decorrido": "",
            "qtd_selecionados": 0,
            "qtd_carregados": 0,
            "qtd_ignorados" : 0
            }
sap_1grau_cearamirim={
            "data_início": "",
            "data_fim": "",
            "tempo_decorrido": "",
            "qtd_selecionados": 0,
            "qtd_carregados": 0,
            "qtd_ignorados" : 0
            }
sap_1grau_curraisnovos={
            "data_início": "",
            "data_fim": "",
            "tempo_decorrido": "",
            "qtd_selecionados": 0,
            "qtd_carregados": 0,
            "qtd_ignorados" : 0
            }
sap_1grau_goiana={
            "data_início": "",
            "data_fim": "",
            "tempo_decorrido": "",
            "qtd_selecionados": 0,
            "qtd_carregados": 0,
            "qtd_ignorados" : 0
            }
sap_1grau_macau={
            "data_início": "",
            "data_fim": "",
            "tempo_decorrido": "",
            "qtd_selecionados": 0,
            "qtd_carregados": 0,
            "qtd_ignorados" : 0
            }
sap_1grau_natal={
            "data_início": "",
            "data_fim": "",
            "tempo_decorrido": "",
            "qtd_selecionados": 0,
            "qtd_carregados": 0,
            "qtd_ignorados" : 0
            }
sap_1grau_mossoro={
            "data_início": "",
            "data_fim": "",
            "tempo_decorrido": "",
            "qtd_selecionados": 0,
            "qtd_carregados": 0,
            "qtd_ignorados" : 0
            }
sap_1grau_paudosferros={
            "data_início": "",
            "data_fim": "",
            "tempo_decorrido": "",
            "qtd_selecionados": 0,
            "qtd_carregados": 0,
            "qtd_ignorados" : 0
            }
pje_2grau={  
            "data_início": "",
            "data_fim": "",
            "tempo_decorrido": "",
            "qtd_selecionados": 0,
            "qtd_carregados": 0,
            "qtd_ignorados" : 0
        }

pje_2grau_tr={
            "data_início": "",
            "data_fim": "",
            "tempo_decorrido": "",
            "qtd_selecionados": 0,
            "qtd_carregados": 0,
            "qtd_ignorados" : 0
        }
sap_2grau={  
            "data_início": "",
            "data_fim": "",
            "tempo_decorrido": "",
            "qtd_selecionados": 0,
            "qtd_carregados": 0,
            "qtd_ignorados" : 0
        }
sap_2grau_tr={  
            "data_início": "",
            "data_fim": "",
            "tempo_decorrido": "",
            "qtd_selecionados": 0,
            "qtd_carregados": 0,
            "qtd_ignorados" : 0
        }

processo = {
            "data_processamento": "",
            "data_início": "",
            "data_fim": "",
            "tempo_decorrido": "",
            "qtd_selecionados": 0,
            "qtd_carregados": 0,
            "qtd_ignorados" : 0,
            
        }
subprocessos = sap_2grau.copy()
processo.append(subprocessos)

for line in lines :
    if chave == False:
        if checagem != ' ':
            a = line.split(" ")
            b=a[0].split("-")
            processo['data_início'] = b[2]+'-'+b[1]+'-'+b[0] + " " + a[1]
            chave = True
    if line.find('Inicio do metodo principal') >= 0:
       
        a = line.split(" ")
        b=a[0].split("-")
        processo['data_processamento'] = b[2]+'-'+b[1]+'-'+b[0] + " " + a[1]

    if line.find('Quantidade de processos Total PJe 1grau a carregar') >= 0:
        checagem = 'pje1g'
        a = line.split(" ")
        b=a[0].split("-")
        pje_1grau['data_início'] = b[2]+'-'+b[1]+'-'+b[0] + " " + a[1]
        pje_1grau['qtd_selecionados'] =int( line.split('a carregar: ')[-1].strip())
        processo['qtd_selecionados'] = int(pje_1grau['qtd_selecionados']) + processo['qtd_selecionados']
       
    if line.find('Quantidade de processos Total PJe 2grau a carregar') >= 0:
        checagem = 'pje2g'
        a = line.split(" ")
        b=a[0].split("-")
        pje_2grau['data_início'] = b[2]+'-'+b[1]+'-'+b[0] + " " + a[1]
        pje_2grau['qtd_selecionados'] =int( line.split('a carregar: ')[-1].strip())
        processo['qtd_selecionados'] = int(pje_2grau['qtd_selecionados']) + processo['qtd_selecionados']
       
    if line.find('Quantidade de processos Total PJe 2grau TR a carregar') >= 0:  
        checagem = 'pje2gTR'
        a = line.split(" ")
        b=a[0].split("-")
        pje_2grau_tr['data_início'] = b[2]+'-'+b[1]+'-'+b[0] + " " + a[1]
        pje_2grau_tr['qtd_selecionados'] =int( line.split('a carregar: ')[-1].strip())
        processo['qtd_selecionados'] = int(pje_2grau_tr['qtd_selecionados']) + processo['qtd_selecionados']

    if line.find('Quantidade de processos Total SAP 1grau (Assu') >= 0:
        checagem = 'sap1g_Assu'
        a = line.split(" ")
        b=a[0].split("-")
        sap_1grau_assu['data_início'] = b[2]+'-'+b[1]+'-'+b[0] + " " + a[1]
        sap_1grau_assu['qtd_selecionados'] =int( line.split('a carregar: ')[-1].strip())
        processo['qtd_selecionados'] = int(sap_1grau_assu['qtd_selecionados']) + processo['qtd_selecionados']

    if line.find('Quantidade de processos Total SAP 1grau (Natal') >= 0:
        checagem = 'sap1g_Natal'
        a = line.split(" ")
        b=a[0].split("-")
        sap_1grau_natal['data_início'] = b[2]+'-'+b[1]+'-'+b[0] + " " + a[1]
        sap_1grau_natal['qtd_selecionados'] =int( line.split('a carregar: ')[-1].strip())
        processo['qtd_selecionados'] = int(sap_1grau_natal['qtd_selecionados']) + processo['qtd_selecionados']

    if line.find('Quantidade de processos Total SAP 1grau (Mossoro') >= 0:
        checagem = 'sap1g_Mossoro'
        a = line.split(" ")
        b=a[0].split("-")
        sap_1grau_mossoro['data_início'] = b[2]+'-'+b[1]+'-'+b[0] + " " + a[1]
        sap_1grau_mossoro['qtd_selecionados'] =int( line.split('a carregar: ')[-1].strip())
        processo['qtd_selecionados'] = int(sap_1grau_mossoro['qtd_selecionados']) + processo['qtd_selecionados']

    if line.find('Quantidade de processos Total SAP 1grau (PauDosFerros') >= 0:
        checagem = 'sap1g_Pau'
        a = line.split(" ")
        b=a[0].split("-")
        sap_1grau_paudosferros['data_início'] = b[2]+'-'+b[1]+'-'+b[0] + " " + a[1]
        sap_1grau_paudosferros['qtd_selecionados'] =int( line.split('a carregar: ')[-1].strip())
        processo['qtd_selecionados'] = int(sap_1grau_paudosferros['qtd_selecionados']) + processo['qtd_selecionados']

    if line.find('Quantidade de processos Total SAP 1grau (Goiana') >= 0:
        checagem = 'sap1g_Goiana'
        a = line.split(" ")
        b=a[0].split("-")
        sap_1grau_goiana['data_início'] = b[2]+'-'+b[1]+'-'+b[0] + " " + a[1]
        sap_1grau_goiana['qtd_selecionados'] =int( line.split('a carregar: ')[-1].strip())
        processo['qtd_selecionados'] = int(sap_1grau_goiana['qtd_selecionados']) + processo['qtd_selecionados']

    if line.find('Quantidade de processos Total SAP 1grau (Macau') >= 0:
        checagem = 'sap1g_Macau'
        a = line.split(" ")
        b=a[0].split("-")
        sap_1grau_macau['data_início'] = b[2]+'-'+b[1]+'-'+b[0] + " " + a[1]
        sap_1grau_macau['qtd_selecionados'] =int( line.split('a carregar: ')[-1].strip())
        processo['qtd_selecionados'] = int(sap_1grau_macau['qtd_selecionados']) + processo['qtd_selecionados']

    if line.find('Quantidade de processos Total SAP 1grau (CurraisNovos') >= 0:
        checagem = 'sap1g_CN'
        a = line.split(" ")
        b=a[0].split("-")
        sap_1grau_curraisnovos['data_início'] = b[2]+'-'+b[1]+'-'+b[0] + " " + a[1]
        sap_1grau_curraisnovos['qtd_selecionados'] =int( line.split('a carregar: ')[-1].strip())
        processo['qtd_selecionados'] = int(sap_1grau_curraisnovos['qtd_selecionados']) + processo['qtd_selecionados']

    if line.find('Quantidade de processos Total SAP 1grau (CearaMirim') >= 0:
        checagem = 'sap1g_CM'
        a = line.split(" ")
        b=a[0].split("-")
        sap_1grau_cearamirim['data_início'] = b[2]+'-'+b[1]+'-'+b[0] + " " + a[1]
        sap_1grau_cearamirim['qtd_selecionados'] =int( line.split('a carregar: ')[-1].strip())
        processo['qtd_selecionados'] = int(sap_1grau_cearamirim['qtd_selecionados']) + processo['qtd_selecionados']

    if line.find('Quantidade de processos Total SAP 1grau (Caico') >= 0:
        checagem = 'sap1g_Caico'
        a = line.split(" ")
        b=a[0].split("-")
        sap_1grau_caico['data_início'] = b[2]+'-'+b[1]+'-'+b[0] + " " + a[1]
        sap_1grau_caico['qtd_selecionados'] =int( line.split('a carregar: ')[-1].strip())
        processo['qtd_selecionados'] = int(sap_1grau_caico['qtd_selecionados']) + processo['qtd_selecionados']

    if line.find('Quantidade de processos Total SAP 2grau a') >= 0:  
        checagem = 'sap2g'
        a = line.split(" ")
        b=a[0].split("-")
        sap_2grau['data_início'] = b[2]+'-'+b[1]+'-'+b[0]+ " " + a[1]
        sap_2grau['qtd_selecionados'] =int( line.split('a carregar: ')[-1].strip())
        processo['qtd_selecionados'] = int(sap_2grau['qtd_selecionados']) + processo['qtd_selecionados']

    if line.find('Quantidade de processos Total SAP 2grau TR') >= 0:  
        checagem = 'sap2gTR'
        a = line.split(" ")
        b=a[0].split("-")
        sap_2grau_tr['data_início'] = b[2]+'-'+b[1]+'-'+b[0]+ " " + a[1]
        sap_2grau_tr['qtd_selecionados'] =int( line.split('a carregar: ')[-1].strip())
        processo['qtd_selecionados'] = int(sap_2grau_tr['qtd_selecionados']) + processo['qtd_selecionados']

    if line.find('Ignorando') >= 0:
         if checagem =='pje1g':
             pje_1grau['qtd_ignorados'] = 1 + pje_1grau['qtd_ignorados']
             processo['qtd_ignorados'] = 1 + processo['qtd_ignorados']
         elif checagem == 'pje2g':
             pje_2grau['qtd_ignorados'] = 1 + pje_2grau['qtd_ignorados']
             processo['qtd_ignorados'] = 1 + processo['qtd_ignorados']
         elif checagem == 'pje2gTR':
             pje_2grau_tr['qtd_ignorados'] = 1 + pje_2grau_tr['qtd_ignorados']
             processo['qtd_ignorados'] = 1 + processo['qtd_ignorados']
         elif checagem == 'sap2g':
             sap_2grau['qtd_ignorados'] = 1 + sap_2grau['qtd_ignorados']
             processo['qtd_ignorados'] = 1 + processo['qtd_ignorados']
         elif checagem == 'sap2gTR':
             sap_2grau_tr['qtd_ignorados'] = 1 + sap_2grau_tr['qtd_ignorados']
             processo['qtd_ignorados'] = 1 + processo['qtd_ignorados']
         elif checagem == 'sap1g_Assu':
             sap_1grau_assu['qtd_ignorados'] = 1 + sap_1grau_assu['qtd_ignorados']
             processo['qtd_ignorados'] = 1 + processo['qtd_ignorados']
         elif checagem == 'sap1g_Natal':
             sap_1grau_natal['qtd_ignorados'] = 1 + sap_1grau_natal['qtd_ignorados']
             processo['qtd_ignorados'] = 1 + processo['qtd_ignorados']
         elif checagem == 'sap1g_Mossoro':
             sap_1grau_mossoro['qtd_ignorados'] = 1 + sap_1grau_mossoro['qtd_ignorados']
             processo['qtd_ignorados'] = 1 + processo['qtd_ignorados']
         elif checagem == 'sap1g_Pau':
             sap_1grau_paudosferros['qtd_ignorados'] = 1 + sap_1grau_paudosferros['qtd_ignorados']
             processo['qtd_ignorados'] = 1 + processo['qtd_ignorados']
         elif checagem == 'sap1g_Goiana':
             sap_1grau_goiana['qtd_ignorados'] = 1 + sap_1grau_goiana['qtd_ignorados']
             processo['qtd_ignorados'] = 1 + processo['qtd_ignorados']
         elif checagem == 'sap1g_Macau':
             sap_1grau_macau['qtd_ignorados'] = 1 + sap_1grau_macau['qtd_ignorados']
             processo['qtd_ignorados'] = 1 + processo['qtd_ignorados']
         elif checagem == 'sap1g_CN':
             sap_1grau_curraisnovos['qtd_ignorados'] = 1 + sap_1grau_curraisnovos['qtd_ignorados']
             processo['qtd_ignorados'] = 1 + processo['qtd_ignorados']
         elif checagem == 'sap1g_CM':
             sap_1grau_cearamirim['qtd_ignorados'] = 1 + sap_1grau_cearamirim['qtd_ignorados']
             processo['qtd_ignorados'] = 1 + processo['qtd_ignorados']
         elif checagem == 'sap1g_Caico':
             sap_1grau_caico['qtd_ignorados'] = 1 + sap_1grau_caico['qtd_ignorados']
             processo['qtd_ignorados'] = 1 + processo['qtd_ignorados']

    if line.find('adicionado') >= 0:
         if checagem =='pje1g':
             pje_1grau['qtd_carregados'] = 1 + pje_1grau['qtd_carregados']
             processo['qtd_carregados'] = 1 + processo['qtd_carregados']
         elif checagem == 'pje2g':
             pje_2grau['qtd_carregados'] = 1 + pje_2grau['qtd_carregados']
             processo['qtd_carregados'] = 1 + processo['qtd_carregados']
         elif checagem == 'pje2gTR':
             pje_2grau_tr['qtd_carregados'] = 1 + pje_2grau_tr['qtd_carregados']
             processo['qtd_carregados'] = 1 + processo['qtd_carregados']
         elif checagem == 'sap2g':
             sap_2grau['qtd_carregados'] = 1 + sap_2grau['qtd_carregados']
             processo['qtd_carregados'] = 1 + processo['qtd_carregados']
         elif checagem == 'sap2gTR':
             sap_2grau_tr['qtd_carregados'] = 1 + sap_2grau_tr['qtd_carregados']
             processo['qtd_carregados'] = 1 + processo['qtd_carregados']
         elif checagem == 'sap1g_Assu':
             sap_1grau_assu['qtd_carregados'] = 1 + sap_1grau_assu['qtd_carregados']
             processo['qtd_carregados'] = 1 + processo['qtd_carregados']
         elif checagem == 'sap1g_Natal':
             sap_1grau_natal['qtd_carregados'] = 1 + sap_1grau_natal['qtd_carregados']
             processo['qtd_carregados'] = 1 + processo['qtd_carregados']
         elif checagem == 'sap1g_Mossoro':
             sap_1grau_mossoro['qtd_carregados'] = 1 + sap_1grau_mossoro['qtd_carregados']
             processo['qtd_carregados'] = 1 + processo['qtd_carregados']
         elif checagem == 'sap1g_Pau':
             sap_1grau_paudosferros['qtd_carregados'] = 1 + sap_1grau_paudosferros['qtd_carregados']
             processo['qtd_carregados'] = 1 + processo['qtd_carregados']
         elif checagem == 'sap1g_Goiana':
             sap_1grau_goiana['qtd_carregados'] = 1 + sap_1grau_goiana['qtd_carregados']
             processo['qtd_carregados'] = 1 + processo['qtd_carregados']
         elif checagem == 'sap1g_Macau':
             sap_1grau_macau['qtd_carregados'] = 1 + sap_1grau_macau['qtd_carregados']
             processo['qtd_carregados'] = 1 + processo['qtd_carregados']
         elif checagem == 'sap1g_CN':
             sap_1grau_curraisnovos['qtd_carregados'] = 1 + sap_1grau_curraisnovos['qtd_carregados']
             processo['qtd_carregados'] = 1 + processo['qtd_carregados']
         elif checagem == 'sap1g_CM':
             sap_1grau_cearamirim['qtd_carregados'] = 1 + sap_1grau_cearamirim['qtd_carregados']
             processo['qtd_carregados'] = 1 + processo['qtd_carregados']
         elif checagem == 'sap1g_Caico':
             sap_1grau_caico['qtd_carregados'] = 1 + sap_1grau_caico['qtd_carregados']
             processo['qtd_carregados'] = 1 + processo['qtd_carregados']
       
    if line.find('Fim m') >= 0:
         if checagem =='pje1g':
            a = line.split(" ")
            b=a[0].split("-")
            pje_1grau['data_fim'] = b[2]+'-'+b[1]+'-'+b[0] + " " + a[1]
            date_init = datetime.strptime(pje_1grau['data_início'], '%d-%m-%Y %H:%M:%S')
            date_final = datetime.strptime(pje_1grau['data_fim'], '%d-%m-%Y %H:%M:%S')
            tempo_decorrido = date_final - date_init
            pje_1grau['tempo_decorrido']=str(int(tempo_decorrido.seconds/60)) +' minutos'
         elif checagem == 'pje2g':
            a = line.split(" ")
            b=a[0].split("-")
            pje_2grau['data_fim'] = b[2]+'-'+b[1]+'-'+b[0] + " " + a[1]
            date_init = datetime.strptime(pje_2grau['data_início'], '%d-%m-%Y %H:%M:%S')
            date_final = datetime.strptime(pje_2grau['data_fim'], '%d-%m-%Y %H:%M:%S')
            tempo_decorrido = date_final - date_init
            pje_2grau['tempo_decorrido']=str(int(tempo_decorrido.seconds/60)) +' minutos'
         elif checagem == 'pje2gTR':
            a = line.split(" ")
            b=a[0].split("-")
            pje_2grau_tr['data_fim'] = b[2]+'-'+b[1]+'-'+b[0] + " " + a[1]
            date_init = datetime.strptime(pje_2grau_tr['data_início'], '%d-%m-%Y %H:%M:%S')
            date_final = datetime.strptime(pje_2grau_tr['data_fim'], '%d-%m-%Y %H:%M:%S')
            tempo_decorrido = date_final - date_init
            pje_2grau_tr['tempo_decorrido']=str(int(tempo_decorrido.seconds/60)) +' minutos'
         elif checagem == 'sap2g':
            a = line.split(" ")
            b=a[0].split("-")
            sap_2grau['data_fim'] = b[2]+'-'+b[1]+'-'+b[0] + " " + a[1]
            date_init = datetime.strptime(sap_2grau['data_início'], '%d-%m-%Y %H:%M:%S')
            date_final = datetime.strptime(sap_2grau['data_fim'], '%d-%m-%Y %H:%M:%S')
            tempo_decorrido = date_final - date_init
            sap_2grau['tempo_decorrido']=str(int(tempo_decorrido.seconds/60)) +' minutos'
         elif checagem == 'sap2gTR':
            a = line.split(" ")
            b=a[0].split("-")
            sap_2grau_tr['data_fim'] = b[2]+'-'+b[1]+'-'+b[0] + " " + a[1]
            date_init = datetime.strptime(sap_2grau_tr['data_início'], '%d-%m-%Y %H:%M:%S')
            date_final = datetime.strptime(sap_2grau_tr['data_fim'], '%d-%m-%Y %H:%M:%S')
            tempo_decorrido = date_final - date_init
            sap_2grau_tr['tempo_decorrido']=str(int(tempo_decorrido.seconds/60)) +' minutos'
         elif checagem == 'sap1g_Assu':
            a = line.split(" ")
            b=a[0].split("-")
            sap_1grau_assu['data_fim'] = b[2]+'-'+b[1]+'-'+b[0] + " " + a[1]
            date_init = datetime.strptime(sap_1grau_assu['data_início'], '%d-%m-%Y %H:%M:%S')
            date_final = datetime.strptime(sap_1grau_assu['data_fim'], '%d-%m-%Y %H:%M:%S')
            tempo_decorrido = date_final - date_init
            sap_1grau_assu['tempo_decorrido']=str(int(tempo_decorrido.seconds/60)) +' minutos'
         elif checagem == 'sap1g_Natal':
            a = line.split(" ")
            b=a[0].split("-")
            sap_1grau_natal['data_fim'] = b[2]+'-'+b[1]+'-'+b[0] + " " + a[1]
            date_init = datetime.strptime(sap_1grau_natal['data_início'], '%d-%m-%Y %H:%M:%S')
            date_final = datetime.strptime(sap_1grau_natal['data_fim'], '%d-%m-%Y %H:%M:%S')
            tempo_decorrido = date_final - date_init
            sap_1grau_natal['tempo_decorrido']=str(int(tempo_decorrido.seconds/60)) +' minutos'
         elif checagem == 'sap1g_Mossoro':
            a = line.split(" ")
            b=a[0].split("-")
            sap_1grau_mossoro['data_fim'] = b[2]+'-'+b[1]+'-'+b[0] + " " + a[1]
            date_init = datetime.strptime(sap_1grau_mossoro['data_início'], '%d-%m-%Y %H:%M:%S')
            date_final = datetime.strptime(sap_1grau_mossoro['data_fim'], '%d-%m-%Y %H:%M:%S')
            tempo_decorrido = date_final - date_init
            sap_1grau_mossoro['tempo_decorrido']=str(int(tempo_decorrido.seconds/60)) +' minutos'
         elif checagem == 'sap1g_Pau':
            a = line.split(" ")
            b=a[0].split("-")
            sap_1grau_paudosferros['data_fim'] = b[2]+'-'+b[1]+'-'+b[0] + " " + a[1]
            date_init = datetime.strptime(sap_1grau_paudosferros['data_início'], '%d-%m-%Y %H:%M:%S')
            date_final = datetime.strptime(sap_1grau_paudosferros['data_fim'], '%d-%m-%Y %H:%M:%S')
            tempo_decorrido = date_final - date_init
            sap_1grau_paudosferros['tempo_decorrido']=str(int(tempo_decorrido.seconds/60)) +' minutos'
         elif checagem == 'sap1g_Goiana':
            a = line.split(" ")
            b=a[0].split("-")
            sap_1grau_goiana['data_fim'] = b[2]+'-'+b[1]+'-'+b[0] + " " + a[1]
            date_init = datetime.strptime(sap_1grau_goiana['data_início'], '%d-%m-%Y %H:%M:%S')
            date_final = datetime.strptime(sap_1grau_goiana['data_fim'], '%d-%m-%Y %H:%M:%S')
            tempo_decorrido = date_final - date_init
            sap_1grau_goiana['tempo_decorrido']=str(int(tempo_decorrido.seconds/60)) +' minutos'

         elif checagem == 'sap1g_Macau':
            a = line.split(" ")
            b=a[0].split("-")
            sap_1grau_macau['data_fim'] = b[2]+'-'+b[1]+'-'+b[0] + " " + a[1]
            date_init = datetime.strptime(sap_1grau_macau['data_início'], '%d-%m-%Y %H:%M:%S')
            date_final = datetime.strptime(sap_1grau_macau['data_fim'], '%d-%m-%Y %H:%M:%S')
            tempo_decorrido = date_final - date_init
            sap_1grau_macau['tempo_decorrido']=str(int(tempo_decorrido.seconds/60)) +' minutos'
         elif checagem == 'sap1g_CN':
            a = line.split(" ")
            b=a[0].split("-")
            sap_1grau_curraisnovos['data_fim'] = b[2]+'-'+b[1]+'-'+b[0] + " " + a[1]
            date_init = datetime.strptime(sap_1grau_curraisnovos['data_início'], '%d-%m-%Y %H:%M:%S')
            date_final = datetime.strptime(sap_1grau_curraisnovos['data_fim'], '%d-%m-%Y %H:%M:%S')
            tempo_decorrido = date_final - date_init
            sap_1grau_curraisnovos['tempo_decorrido']=str(int(tempo_decorrido.seconds/60)) +' minutos'
         elif checagem == 'sap1g_CM':
            a = line.split(" ")
            b=a[0].split("-")
            sap_1grau_cearamirim['data_fim'] = b[2]+'-'+b[1]+'-'+b[0] + " " + a[1]
            date_init = datetime.strptime(sap_1grau_cearamirim['data_início'], '%d-%m-%Y %H:%M:%S')
            date_final = datetime.strptime(sap_1grau_cearamirim['data_fim'], '%d-%m-%Y %H:%M:%S')
            tempo_decorrido = date_final - date_init
            sap_1grau_cearamirim['tempo_decorrido']=str(int(tempo_decorrido.seconds/60)) +' minutos'
         elif checagem == 'sap1g_Caico':
            a = line.split(" ")
            b=a[0].split("-")
            sap_1grau_caico['data_fim'] = b[2]+'-'+b[1]+'-'+b[0] + " " + a[1]
            date_init = datetime.strptime(sap_1grau_caico['data_início'], '%d-%m-%Y %H:%M:%S')
            date_final = datetime.strptime(sap_1grau_caico['data_fim'], '%d-%m-%Y %H:%M:%S')
            tempo_decorrido = date_final - date_init
            sap_1grau_caico['tempo_decorrido']=str(int(tempo_decorrido.seconds/60)) +' minutos'
   
   
           
if checagem =='pje1g':
    processo['data_fim'] = pje_1grau['data_fim']
elif checagem == 'pje2g':
    processo['data_fim'] = pje_2grau['data_fim']
elif checagem == 'pje2gTR':
    processo['data_fim'] = pje_2grau_tr['data_fim']
elif checagem == 'sap2g':
    processo['data_fim'] = sap_2grau['data_fim']
elif checagem == 'sap2gTR':
    processo['data_fim'] = sap_2grau_tr['data_fim']
elif checagem == 'sap1g_Assu':
    processo['data_fim'] = sap_1grau_assu['data_fim']
elif checagem == 'sap1g_Natal':
    processo['data_fim'] = sap_1grau_natal['data_fim']
elif checagem == 'sap1g_Mossoro':
    processo['data_fim'] = sap_1grau_mossoro['data_fim']
elif checagem == 'sap1g_Pau':
    processo['data_fim'] = sap_1grau_paudosferros['data_fim']
elif checagem == 'sap1g_Goiana':
    processo['data_fim'] = sap_1grau_goiana['data_fim']
elif checagem == 'sap1g_Macau':
    processo['data_fim'] = sap_1grau_macau['data_fim']
elif checagem == 'sap1g_CN':
    processo['data_fim'] = sap_1grau_curraisnovos['data_fim']
elif checagem == 'sap1g_CM':
    processo['data_fim'] = sap_1grau_cearamirim['data_fim']
elif checagem == 'sap1g_Caico':
    processo['data_fim'] = sap_1grau_caico['data_fim']

date_init = datetime.strptime(processo['data_início'], '%d-%m-%Y %H:%M:%S')
date_final = datetime.strptime(processo['data_fim'], '%d-%m-%Y %H:%M:%S')
tempo_decorrido = date_final - date_init
processo['tempo_decorrido']=str(int(tempo_decorrido.seconds/60)) +' minutos '

x = path.split(".")
path =x[0] + 'Resumo.txt'




with open(path, "w") as f:
    f.write(y)