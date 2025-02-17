```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   A : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
   B : My_Array;
begin
   B := A;
   A(5) := 0;
   -- Expecting B(5) to be 5, but it's also 0 due to shallow copy
   Put_Line("B(5) = " & Integer'Image(B(5)));
end Example;
```