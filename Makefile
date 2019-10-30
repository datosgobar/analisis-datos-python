clean_white_spaces:
	python shrink_file.py --file '$(REPORT)'

reporte_resultado_primario:
	jupyter nbconvert --execute --ExecutePreprocessor.timeout=-1 --to notebook --inplace --output-dir ./Series-de-Tiempo/reportes ./Series-de-Tiempo/reporte-resultado-primario.ipynb
	jupyter nbconvert --to html --no-input --output-dir ./Series-de-Tiempo/reportes ./Series-de-Tiempo/reporte-resultado-primario.ipynb
	python shrink_file.py --file ./Series-de-Tiempo/reportes/resultado-primario.html
