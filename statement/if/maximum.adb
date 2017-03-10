package body Maximum is
   
   function Maximum1 (A, B : Integer) return Integer is
   begin
      if A > B then
         return A;
      else
         return B;
      end if;
   end Maximum1;
   
   function Maximum2 (A, B : Integer) return Integer is
   begin
      return (if A > B then A else B);
   end Maximum2;

   function Maximum3 (A, B : Integer) return Integer is
     (if A > B then A else B);
   
end Maximum;
