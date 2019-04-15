with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with selection; Use selection;
procedure Main is
   Sorted : Arr := (15, 20, 8, 2);
begin
   Sort(Sorted);
   for i in Sorted'Range loop
     Put(Sorted(i));
     end loop;
end Main;
