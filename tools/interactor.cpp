// Author: Ivan Kazmenko (gassa@mail.ru)
#include "testlib.h"
#include <algorithm>
#include <cassert>
#include <cstdio>
#include <string>

using namespace std;

int    const n     =   5000;
string const nstr  = "5000";
int    const k     =   2000;
int    const x     =    100;
int    const SHIFT =   4000;

int main (int argc, char * argv [])
{
	setName ("interactor for problem \"online-exam\"");

	registerInteraction (argc, argv);

	string patternString = "[01]{" + nstr + "}";
	pattern patternIO = pattern (patternString);
	string correct = inf.readString (patternIO);

	int attempts = 0;
	int best = 0;
	string attempt;
	while ((attempt = ouf.readString ()) != "")
	{
		attempts++;
		if (!patternIO.matches (attempt))
		{
			quitf (_wa, "attempt %d: string %s does not "
			    "match pattern %s", attempts,
			    compress (attempt).c_str (),
			    patternString.c_str ());
		}
		if (attempts > x)
		{
			quitf (_wa, "too many attempts");
		}
		int wrong = 0;
		int pos = 0;
		for ( ; pos < n; pos++)
		{
			wrong += (correct[pos] != attempt[pos]);
			if (wrong >= k)
			{
				break;
			}
		}
		pos++;
		best = max (best, pos);
		printf ("%d\n", pos);
		fflush (stdout);
	}

	int score = max (0, best - SHIFT);
	quitf (_ok, "best = %d, score = %d", best, score);

	assert (false);
	return _fail;
}
