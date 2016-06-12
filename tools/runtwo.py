#!/usr/bin/env python

import os
import sys
import subprocess

mswindows = sys.platform.startswith('win')

r1, w1 = os.pipe()
r2, w2 = os.pipe()
if mswindows:
	iserv = subprocess.Popen(sys.argv[1].split(), stdin = os.fdopen(r1), stdout = os.fdopen(w2, 'w'), stderr = sys.stderr)
	sol = subprocess.Popen(sys.argv[2].split(), stdin = os.fdopen(r2), stdout = os.fdopen(w1, 'w'), stderr = sys.stderr)
else:
	iserv = subprocess.Popen(sys.argv[1].split(), stdin = os.fdopen(r1), stdout = os.fdopen(w2, 'w'), stderr = sys.stderr, close_fds = True)
	sol = subprocess.Popen(sys.argv[2].split(), stdin = os.fdopen(r2), stdout = os.fdopen(w1, 'w'), stderr = sys.stderr, close_fds = True)
sol.wait()
iserv.wait()
