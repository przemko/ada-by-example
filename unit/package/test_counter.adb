with Counter;
with Ada.Text_IO;

procedure Test_Counter is
begin
   Ada.Text_IO.Put_Line ("Counter = " & Natural'Image (Counter.Get));
   Counter.Increment;
   Ada.Text_IO.Put_Line ("Counter = " & Natural'Image (Counter.Get));
   Counter.Increment;
   Counter.Increment;
   Ada.Text_IO.Put_Line ("Counter = " & Natural'Image (Counter.Get));
end Test_Counter;
