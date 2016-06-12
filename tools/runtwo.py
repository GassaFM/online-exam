#!/usr/bin/env python

import os
import sys
import subprocess

r1, w1 = os.pipe()
r2, w2 = os.pipe()
iserv = subprocess.Popen(sys.argv[1].split(),  stdin = os.fdopen(r1), stdout = os.fdopen(w2,'w'), stderr=sys.stderr)
sol = subprocess.Popen(sys.argv[2].split(), stdin = os.fdopen(r2), stdout = os.fdopen(w1,'w'), stderr=sys.stderr)
sol.wait()
iserv.wait()
