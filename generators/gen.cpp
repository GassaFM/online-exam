// Author: Ivan Kazmenko (gassa@mail.ru)
#include <cstdlib>
#include <iostream>
#include <random>

using namespace std;

int main (int argc, char * argv [])
{
	int seed;
	if (argc > 1)
	{
		seed = atoi (argv[1]);
	}
	else
	{
		random_device rd;
		uniform_int_distribution <> bits30 (0, (1 << 30) - 1);
		seed = bits30 (rd);
	}
	mt19937 gen (seed);
	uniform_int_distribution <> bits1 (0, 1);

	int n = 5000;
	string s;
	for (int i = 0; i < n; i++)
	{
		s += (char) (bits1 (gen) + '0');
	}
	cout << s << endl;
}
