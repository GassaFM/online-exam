import random
import sys
n = 5000
k = 2000
x =  100

random.seed (12345)
for attempt in range (3):
    for position in range (n):
        sys.stdout.write (random.choice ('01'))
    sys.stdout.write ('\n')
    sys.stdout.flush ()
    res = int (sys.stdin.readline ())
    sys.stderr.write ('{0:5d}'.format (res))
sys.stderr.write ('\n')
