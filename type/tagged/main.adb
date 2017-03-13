with Puzzle; use Puzzle;

procedure Main is
begin
   Print_Expression 
     (
      new Multiplication' 
	(
	 new Literal' (Value => 2),
	 new Addition'
	   (
	    new Literal' (Value => 3),
	    new Literal' (Value => 1))));
end Main;
