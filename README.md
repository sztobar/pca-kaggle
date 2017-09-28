# pca-kaggle
Kod źródłowy pracy magisterskiej pt. "Wykorzystanie pandas oraz scikit do analizy cech w uczeniu maszynowym".

Żeby zbudować obraz dockera należy użyć komendy:
```
make build
```

W celu uruchomienia konetera należy wpisać w konsoli:
```
make run
```

Kod rozwiązuje skończone już wyzwanie Kaggle (Two Sigma Financial Modeling Challenge)[https://www.kaggle.com/c/two-sigma-financial-modeling]

Jupyter zawiera wewnątrz 5 plików:
 * pca.py - implementacja metody analizy składowych głównych,
 * kagglegym.py - skrypt imitujący api kaggle'owe,
 * data_analysis.ipynb - zeszyt z analizą danych i rozwiązaniem zadania,
 * comparisions.ipynb - zeszyt rozwiązujący zadanie z użyciem różnych technik i podsumowujący je w tabelce,
 * input/train.h5 - plik z zestawem danych.

Do poprawnego pobrania repozytorium niezbędne jest narzędzie (git lfs)[https://git-lfs.github.com/] do przechowywania dużych plików. Bez niego nie zostanie pobrany plik `train.h5` zawierający zestaw danych.
Jeśli podczas uruchamiania zeszytu kernel umiera, oznacza to, że trzeba zwiększyć pamięć dla dockera.
