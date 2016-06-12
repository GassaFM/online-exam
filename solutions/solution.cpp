#include <iomanip>
#include <iostream>
#include <random>

using namespace std;

int const n = 5000;
int const k = 2000;
int const x =  100;

int main (void)
{
    mt19937 gen (12345);
    uniform_int_distribution <> one_bit (0, 1);

    for (int attempt = 0; attempt < 3; attempt++)
    {
        for (int position = 0; position < n; position++)
        {
            cout << one_bit (gen);
        }
        cout << endl;
        int res;
        cin >> res;
        cerr << setw (5) << res;
    }
    cerr << endl;
    return 0;
}
