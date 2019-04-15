with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Poly; Use Poly;
procedure Main is
begin
   Put(Horner(2, 2 & 3 & 3 & 4));
end Main;
