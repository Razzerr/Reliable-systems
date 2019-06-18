with Ada.Text_IO; use Ada.Text_IO;
--  with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with MathModule; Use MathModule;
procedure Main is
begin
   Put(" " & Float'image(Sqrt(5.0, 0.5)));
end Main;
