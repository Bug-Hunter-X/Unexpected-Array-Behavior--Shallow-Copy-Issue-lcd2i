```ada
procedure Example_Solution is
   type My_Array is array (1..10) of Integer;
   A : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
   B : My_Array;
begin
   B := My_Array'(A); -- Deep copy using aggregate type conversion
   A(5) := 0;
   Put_Line("B(5) = " & Integer'Image(B(5))); -- Output: B(5) = 5
end Example_Solution;
```