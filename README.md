# BenchBlock
Repositório anonimizado para o SBSEG 2025.
## Instalação de dependências
Criar o ambiente virtual em python.
```
python3 -m venv venv
```

Ativar o ambiente virtual
```
source venv/bin/activate
```
Quando quiser desativar o ambiente virtual use:
```
deactivate
```

Instale as dependências python
```
pip install -r requirements.txt
```
Instale a biblioteca liboqs com o script install.sh (necessita sudo)
```
bash install.sh
```
## Executando os algorítmos
### Java
Entre na pasta dos algoritmos Java
```
cd Algorithms-Java
```
Siga o [README](Algorithms-Java/README.md) de Java para executar os algoritmos

Os resultados estarão na pasta [Algorithms-Java/results](Algorithms-Java/results)

### Python
Entre na pasta dos algoritmos Pyhthon
```
cd Algorithms-Python
```
Siga o [README](Algorithms-Python/README.md) de Python para executar os algoritmos

Os resultados estarão na pasta [Algorithms-Python/results](Algorithms-Python/results)

## Executando o simulador BlockSim
Entre na pasta do BlockSim
```
cd BlockSim
```

Siga o [Readme](BlockSim/README.md) do BlockSim para executar as simulações
 
Os resultados estarão na pasta [BlockSim/results](BlockSim/results). Dentro dos arquivos ".xlsx" o resultado da verificação dos blocos está na coluna "Transactions Verification Time (ms)" da planilha "Chain".