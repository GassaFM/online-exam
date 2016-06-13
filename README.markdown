### Solutions

Example solutions in different languages.
Currently present are C, C++11, D, Python (2/3), Pascal and Java.
You can use any of these solutions as a starting point.

Each solution just uses the pseudo-random number generator
built into the respective language to make **3** random attempts.
You can run any solution and give it three numbers manually
as answers to get the feel of how it works.
That's for demonstration purposes,
feel free to change the number of attempts to **x** if you like.

**WARNING:**
If you develop your solution in a fork of this repository,
make sure that you don't commit it to the public!
Otherwise, you solution may be used by another person in the same contest,
and the organizers will have to disqualify all affected parties.
Use local or private repository instead.

### Local testing

You can use `test_solutions.bat` or `test_solutions.sh` to test
your solution locally.
It has two dependencies, all located in `tools` directory.

* The utility to run two programs interactively is called RunTwo.
It comes in two flavors: one written in Python (2 or 3)
and another written in D.
For D version, you will have to compile it first.
Visit https://python.org or https://dlang.org to get the respective tools.

* The interactive part of the checking process is called Interactor.
It is written in C++ using Testlib.
You will have to go to `tools` directory and compile it.

After that, edit `test_solutions.bat` or `test_solutions.sh` script.
There, you have to select the flavor of RunTwo and the kind of solution
you want to test.
If the solution is in a compiled language, go to `solutions`
and compile it first.
After that, just run the script in a console.
If all is well, you will see the score of the solution for 10 example tests.

### Tests

There are 10 example tests.
They are the same as examples in the testing system.

### Generators

These are test generators based on Mersenne Twister.
Languages: C++11, D, Python (2/3).
You can use them to generate more tests.

Usage:

* `gen <x>` to generate the test with seed=x
* `gen` to generate a test with random seed

Note that generators in different languages
(C++11, D, Python2, Python3) produce different tests
even when using the same seed: each language uses
a slightly different implementation of the Mersenne Twister engine.

The D version with seeds from 1 to 10 was used to generate the examples.

### Contributing

As this round is experimental, there is one form of collaboration
allowed: if you want to contribute a solution or a RunTwo utility
in a language not yet present, pull requests are welcome!

* For a solution, make sure that it uses
a built-in pseudo-random number generator and
generally behaves the same as solutions in other languages:
in particular, **don't** make a solution available online
if it is substantially different from the example solutions!

* For a RunTwo utility, the goals are to have no dependencies besides
the standard library and to work across popular platforms
(at least Windows and Linux).
