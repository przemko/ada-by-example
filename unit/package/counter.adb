package body Counter is

   procedure Increment is
   begin
      Counter := Counter + 1;
   end Increment;

   function Get return Natural is
   begin
      return Counter;
   end Get;

end Counter;
