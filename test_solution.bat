@echo off
rem *1. RunTwo
rem *1.1. Python: just uncomment the next line:
set RUNTWO=python tools\runtwo.py
rem *1.2. D: compile tools\runtwo.d in tools\ and uncomment the next line:
rem set RUNTWO=tools\runtwo

rem *2. Interactor
rem *Compile tools\interactor in tools\ and uncomment the next line:
set INTERACTOR=tools\interactor

rem *3. Solution
rem *3.1. Languages compiled to native code:
rem *compile the solution in solutions\ and uncomment the next line:
set SOLUTION=solutions\solution
rem *3.2. Python: just uncomment the next line:
rem set SOLUTION=python solutions\solution.py
rem *3.3. Java: compile the solution in solutions\ and uncomment the next line:
rem set SOLUTION=java -cp solutions solution

rem *Testing
rem *Creates file "tempfile" in the current path
for %%t in (tests\??) do (
    %RUNTWO% "%INTERACTOR% %%t tempfile %%t" "%SOLUTION%"
)
