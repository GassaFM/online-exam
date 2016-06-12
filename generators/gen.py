# Author: Ivan Kazmenko (gassa@mail.ru)
import random, sys

if len (sys.argv) > 1:
	seed = int (sys.argv[1])
else:
	seed = random.randrange (2 ** 30)
random.seed (seed)

n = 5000
s = ''
for i in range (n):
	s += chr (random.randrange (2) + ord ('0'))
sys.stdout.write (s + '\n')
