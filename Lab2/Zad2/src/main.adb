with Ada.Text_IO; use Ada.Text_IO;
--  with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Max2; Use Max2;
procedure Main is
   N : Integer;
   V : Vector := (8, 9);
begin
   N := FindMax2(V);
   Put(" " & Integer'image(N));
end Main;
