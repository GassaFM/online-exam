#!/bin/bash

#--- 1. RunTwo
#--- 1.1. Python: just uncomment the next line:
export RUNTWO="python tools/runtwo.py"
#--- 1.2. D: compile tools/runtwo.d in tools/ and uncomment the next line:
#export RUNTWO="tools/runtwo"

#--- 2. Interactor
#--- Compile tools/interactor in tools/ and uncomment the next line:
export INTERACTOR="tools/interactor"

#--- 3. Solution
#--- 3.1. Languages compiled to native code:
#--- compile the solution in solutions/ and uncomment the next line:
export SOLUTION="solutions/solution"
#--- 3.2. Python: just uncomment the next line:
#export SOLUTION="python solutions/solution.py"
#--- 3.3. Java: compile the solution in solutions/ and uncomment the next line:
#export SOLUTION="java -cp solutions solution"

#--- Testing
#--- Creates file "tempfile" in the current path
for t in tests/?? ; do
    $RUNTWO "$INTERACTOR $t tempfile $t" "$SOLUTION"
done
