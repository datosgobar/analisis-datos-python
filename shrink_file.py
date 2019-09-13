#!/usr/bin/env python
# -*- coding: utf-8 -*-

"""
Módulo para retocar estilo de reportes html generados a partir de jupyter
notebooks.
"""
import os
import click

WHITE_LINE = """<div class="cell border-box-sizing code_cell rendered">

</div>"""


@click.command()
@click.option('--file', help='Nombre del archivo', required=True)
def remove_empty_lines(file):
    if os.path.isfile(file):
        with open(file, 'r+') as f:
            data = f.read().replace(WHITE_LINE, '')
            f.seek(0)
            f.write(data)
            f.truncate()
        # with open(file, 'w') as f:
            # f.write(data)
    else:
        raise 'No se encontró el archivo'


if __name__ == '__main__':
    remove_empty_lines()
