clean_white_spaces:
	python shrink_file.py --file '$(REPORT)'

reporte_resultado_primario:
	jupyter nbconvert --execute --ExecutePreprocessor.timeout=-1 --to notebook --inplace --output-dir ./Ejercicios/reportes ./Ejercicios/resultado-primario.ipynb
	jupyter nbconvert --to html --no-input --output-dir ./Ejercicios/reportes ./Ejercicios/resultado-primario.ipynb
	python shrink_file.py --file ./Ejercicios/reportes/resultado-primario.html
