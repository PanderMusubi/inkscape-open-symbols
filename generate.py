#!/usr/bin/env python
# -*- coding: utf-8 -*-

"""
    inkscapeSymbolGenerator: A inkscape symbol library generator
    Copyright (C) 2015 Xavi Julián Olmos

    See the file LICENSE for copying permission.
"""

import sys, os
import logging
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

def cleanSVGStyles(file):
    print('Cleaning SVG....')

if __name__ == '__main__':
    # Setup the command line arguments.
    optp = OptionParser()

    # Output verbosity options.
    optp.add_option('--folder', help='Folder to generate icons from', dest='folder')
    optp.add_option('--file', help='File to generate icon from', dest='file')
    optp.add_option('-o', '--output', help='Output file', dest='output')

    opts, args = optp.parse_args()

    if opts.folder is None:
        if opts.file is None:
            optp.error('At list one value for file or folder is needed')
        else:
            if opts.output is None:
                os.system('svgo ' + opts.file)
            else:
                os.system('svgo ' + opts.file + ' -o ' + opts.output)
    else:
        if opts.file is None:
            if opts.output is None:
                os.system('svgo ' + opts.folder)
            else:
                os.system('cat ' + opts.folder + '/*.svg > ' + opts.output)
                os.system('svgo ' + opts.output + ' -o ' + opts.output)
                cleanSVGStyles(opts.output)
        else:
            optp.error('File and folder cannot exist')
