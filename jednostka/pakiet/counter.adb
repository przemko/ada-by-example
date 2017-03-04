package body Counter is

   Counter : Natural := 0;

   procedure Increment is
   begin
      Counter := Counter + 1;
   end Increment;

   function Get return Natural is
   begin
      return Counter;
   end Get;

end Counter;
