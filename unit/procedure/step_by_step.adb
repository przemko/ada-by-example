with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure Step_By_Step is

   procedure Kahan_Sum (Value :     in Float;
                        Sum   : in out Float;
                        Comp  : in out Float) is
      Y : Float := Value - Comp;
      T : Float := Sum + Y;
   begin
      Comp := (T  - Sum) - Y;
      Sum := T;
   end Kahan_Sum;

   Sum  : Float;
   Comp : Float;

begin

   Sum := 0.0;
   Comp := 0.0;
   for I in 1 .. 10000 loop
      Kahan_Sum (1.0 / Float (I * I), Sum, Comp);
   end loop;
   Put (" Kahan  = ");
   Put (Sum, 20, 10, 0);
   New_Line;

   Sum := 0.0;
   for I in 1 .. 10000 loop
      Sum := Sum + 1.0 / Float (I * I);
   end loop;
   Put ("Forward = ");
   Put (Sum, 20, 10, 0);
   New_Line;

   Sum := 0.0;
   for I in reverse 1 .. 10000 loop
      Sum := Sum + 1.0 / Float (I * I);
   end loop;
   Put ("Reverse = ");
   Put (Sum, 20, 10, 0);
   New_Line;

end Step_By_Step;
