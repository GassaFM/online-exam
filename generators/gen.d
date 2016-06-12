// Author: Ivan Kazmenko (gassa@mail.ru)
import std.conv;
import std.random;
import std.stdio;

void main (string [] args)
{
	uint seed = void;
	if (args.length > 1)
	{
		seed = to !(uint) (args[1]);
	}
	else
	{
		seed = uniform (0, 1 << 30);
	}
	rndGen = Mt19937 (seed);

	int n = 5000;
	string s;
	foreach (i; 0..n)
	{
		s ~= cast (char) (uniform (0, 2) + '0');
	}
	writeln (s);
}
