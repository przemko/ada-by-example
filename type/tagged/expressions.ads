package Expressions is
   
   type Expression is tagged null record;

   procedure Print (E : Expression);
	
   type Literal is new Expression with
      record
         Value : Natural;
      end record;

   overriding procedure Print (L : Literal);

   type Expr_Ptr is access all Expression'Class;

   type Binary_Operation is new Expression with
      record
         Left, Right : Expr_Ptr;
      end record;

   type Addition is new Binary_Operation with null record;
   
   overriding procedure Print (A : Addition);

   type Subtraction is new Binary_Operation with null record;

   overriding procedure Print (S : Subtraction);

   type Multiplication is new Binary_Operation with null record;

   overriding procedure Print (M : Multiplication);

   type Division is new Binary_Operation with null record;

   overriding procedure Print (D : Division);

   procedure Print_Expression (Tree : in Expr_Ptr);

end Expressions;
