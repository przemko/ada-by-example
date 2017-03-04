package Counter is

   procedure Increment;

   function Get return Natural;

private

   Counter : Natural := 0;

end Counter;
