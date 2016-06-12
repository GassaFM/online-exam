module solution;
import std.random;
import std.stdio;

immutable int n = 5000;
immutable int k = 2000;
immutable int x =  100;

void main ()
{
    rndGen = Mt19937 (12345);
    foreach (attempt; 0..3)
    {
        foreach (position; 0..n)
        {
            write ("01"[uniform (0, 2)]);
        }
        writeln ();
        stdout.flush ();
        int res;
        readf (" %s", &res);
        stderr.writef ("%5s", res);
    }
    stderr.writeln;
}
