#!/usr/bin/env python3

# import ROOT as 
import math
import sys, argparse
import MyPythonUtilities.MyPyRootPlot1d as mprp

# parser = argparse.ArgumentParser(description='Process H4l minitrees')
# parser.add_argument('--filelist',  type=str, )


s = float(sys.argv[1])
b = float(sys.argv[2])
print(mprp.sig_complex(s, 0, b, 0)[0])
print(math.sqrt(  2 * (s + b) * math.log(1 + s/b) - 2 * s  ))
