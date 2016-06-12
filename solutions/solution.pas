program solution;

const
    n = 5000;
    k = 2000;
    x =  100;

var
    attempt, position, res: Longint;

BEGIN
    randseed := 12345;
    for attempt := 1 to 3 do begin
        for position := 1 to n do begin
            write (random (2));
        end;
        writeln;
        flush (output);
        readln (res);
        write (erroutput, res:5);
    end;
    writeln (erroutput);
END.
