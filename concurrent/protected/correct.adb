with Ada.Text_IO; use Ada.Text_IO;
with Ada.Real_Time;

procedure Correct is

   protected type Counter is

      procedure Increment;

      procedure Decrement;

      function Get return Integer;

   private

      N : Integer := 0;

   end Counter;


   protected body Counter is

      procedure Increment is
      begin
         N := N + 1;
      end Increment;

      procedure Decrement is
      begin
         N := N - 1;
      end Decrement;

      function Get return Integer is
      begin
         return N;
      end Get;

   end Counter;

   C : Counter;

   task Up;

   task body Up is
   begin
      for I in 1 .. 10000 loop
         C.Increment;
      end loop;
   end Up;

   task Down;

   task body Down is
   begin
      for I in 1 .. 10000 loop
         C.Decrement;
      end loop;
   end Down;

begin
   delay 2.0;
   Put_Line ("N = " & Integer'Image (C.Get));
end Correct;
