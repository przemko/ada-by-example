with Expressions; use Expressions;

procedure Main is
begin
   Print_Expression 
     (new Multiplication'
	(Left => new Literal' (Value => 2),
	 Right => new Addition'
	   (Left => new Literal' (Value => 1),
	    Right => new Literal' (Value => 3))));
end Main;
