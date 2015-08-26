# -*- coding: utf-8 -*-
"""
Created on Wed Apr 23 10:49:34 2014

@author: balleng
"""

import glob
viejo = glob.glob("~/Documentos/Mendeley/*.pdf")
nuevo = glob.glob("~/Dropbox/Mendeley/*.pdf")

#something is wrong with these files. Check. Working.
viejo_nopaths =[x.split('/')[-1] for x in viejo]
nuevo_nopaths =[x.split('/')[-1] for x in nuevo]

def uniques(x):
    unico = []
    for i in x:
        if i not in nuevo_nopaths:
            unico.append(i)
    return unico
