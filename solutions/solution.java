import java.util.*;

public class solution {
    static final int n = 5000;
    static final int k = 2000;
    static final int x =  100;

    public static void main (String [] args) {
        Random gen = new Random (12345);
        Scanner sc = new Scanner (System.in);

        for (int attempt = 0; attempt < 3; attempt++) {
            for (int position = 0; position < n; position++) {
                System.out.print ("01".charAt (gen.nextInt () & 1));
            }
            System.out.println ();
            System.out.flush ();
            int res = sc.nextInt ();
            System.err.format ("%5d", res);
        }
        System.err.println ();
    }
}
