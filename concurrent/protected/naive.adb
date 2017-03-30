with Ada.Text_IO; use Ada.Text_IO;
with Ada.Real_Time;

procedure Naive is

   N : Integer := 0;

   task Up;

   task body Up is
   begin
      for I in 1 .. 10000 loop
         N := N + 1;
      end loop;
   end Up;

   task Down;

   task body Down is
   begin
      for I in 1 .. 10000 loop
         N := N - 1;
      end loop;
   end Down;

begin
   delay 2.0;
   Put_Line ("N = " & Integer'Image (N));
end Naive;
