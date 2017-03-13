with Ada.Text_IO; use Ada.Text_IO;

package body Puzzle is

   function Build_Expression (Args : in Numbers;
                              Value : in Integer) return Expr_Ptr is
      Tree : Expr_Ptr :=
        new Addition' (
                       Left => new Literal' (Value => 1),
                       Right => new Literal' (Value => 2));
   begin
      return Tree;
   end Build_Expression;

   procedure Print_Expression (Tree : in Expr_Ptr) is

      procedure Print (L : Literal) is
      begin
         Put (Integer'Image (L.Value));
      end Print;

      procedure Print (A : Addition) is
      begin
         Put ("(");
         Print_Expression(A.Left);
         Put ("+");
         Print_Expression(A.Right);
         Put (")");
      end Print;

      procedure Print (S : Subtraction) is
      begin
         Put ("(");
         Print_Expression(S.Left);
         Put ("-");
         Print_Expression(S.Right);
         Put (")");
      end Print;

      procedure Print (M : Multiplication) is
      begin
         Put ("(");
         Print_Expression(M.Left);
         Put ("*");
         Print_Expression(M.Right);
         Put (")");
      end Print;

      procedure Print (D : Division) is
      begin
         Put ("(");
         Print_Expression(D.Left);
         Put ("/");
         Print_Expression(D.Right);
         Put (")");
      end Print;

   begin
      Print (Tree.all);
   end Print_Expression;

end Puzzle;
