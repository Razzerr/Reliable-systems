with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Smallest_Factor_Module; Use Smallest_Factor_Module;
procedure Main is
   N : Positive := 1001;
   Factor : Positive;
begin
   Smallest_Factor(N, Factor);
   Put(Factor);
end Main;
