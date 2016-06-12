#include <stdio.h>
#include <stdlib.h>

#define n 5000
#define k 2000
#define x  100

int main (void)
{
    int res;
    srand (12345);
    for (int attempt = 0; attempt < 3; attempt++)
    {
        for (int position = 0; position < n; position++)
        {
            putchar ("01"[rand () % 2]);
        }
        putchar ('\n');
        fflush (stdout);
        scanf ("%d", &res);
        fprintf (stderr, "%5d", res);
    }
    fprintf (stderr, "\n");
    return 0;
}
