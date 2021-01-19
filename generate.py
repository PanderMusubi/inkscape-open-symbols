#!/usr/bin/env python
# -*- coding: utf-8 -*-

"""
    inkscapeSymbolGenerator: An Inkscape symbol library generator
    Copyright (C) 2015 Xavier Julián Olmos

    See the file LICENSE for copying permission.
"""

import os
from optparse import OptionParser

####Objetivo
#If select all merge all files in a single SVG and then
#If select file, clean it with SVGO
#Remove styles then
#Save

####Deberes
# Compactar el formato del script los ifs ver si existen alternativas
# Utilizar paths de python - construccion de paths pythonica.
# Utilizar el nombre del archivo.
# Buscar regex para eliminar etiquetas en cleanSVGStyles()
# Añadir contenido a un fichero.
# Migrar de OptionParser to https://docs.python.org/3/library/optparse.html

def _cleanSVGStyles(file):
    print('Cleaning SVG....')

if __name__ == '__main__':
    # Setup the command line arguments.
    optp = OptionParser()

    # Output verbosity options.
    optp.add_option('-i', '--input', help='Input to generate icon, it ca be a folder', dest='input')
    optp.add_option('-o', '--output', help='Output file', dest='output')

    opts, args = optp.parse_args()

    if opts.input and opts.output:
        os.system('cat ' + opts.input + ' > ' + opts.output)
        os.system('svgo ' + opts.output)
        cleanSVGStyles(opts.output)

    elif not opts.input and opts.output:
        os.system('cat *.svg > ' + opts.output)
        os.system('svgo ' + opts.output)
        cleanSVGStyles(opts.output)

    elif opts.input and not opts.output:
        os.system('svgo ' + opts.input)

    elif not opts.input and not opts.output:
        optp.error('At list one value is required')
