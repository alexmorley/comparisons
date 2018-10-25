import sys as sys
import numpy as np
from collections import defaultdict
#from getopt import getopt

def parse_args(args):
    argsdict = defaultdict(list)
    for farg in args:
        if farg.startswith('--'):
            (arg,val) = farg.split("=")
            arg = arg[2:]
            argsdict[arg].append(val)
    return argsdict

args = parse_args(sys.argv[1:])
X = np.genfromtxt(args['X'][0], delimiter=',')
Y = np.genfromtxt(args['Y'][0], delimiter=',')

corXY = np.corrcoef(X,Y)
np.savetxt(args['result'][0], corXY, delimiter=',')
