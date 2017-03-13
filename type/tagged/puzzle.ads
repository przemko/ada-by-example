package Puzzle is

   type Expression is tagged null record;

   type Literal is new Expression with
      record
         Value : Integer;
      end record;

   type Expr_Ptr is access all Expression'Class;

   type Binary_Operation is new Expression with
      record
         Left, Right : Expr_Ptr;
      end record;

   type Addition is new Binary_Operation with null record;

   type Subtraction is new Binary_Operation with null record;

   type Multiplication is new Binary_Operation with null record;

   type Division is new Binary_Operation with null record;

   type Numbers is array (Positive range <>) of Integer;

   function Build_Expression (Args : in Numbers;
                              Value : in Integer) return Expr_Ptr;

   procedure Print_Expression (Tree : in Expr_Ptr);

end Puzzle;
