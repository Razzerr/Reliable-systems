with Ada.Text_IO; use Ada.Text_IO;
--  with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with IsPrimeModule; Use IsPrimeModule;
procedure Main is
   N : Positive := 3;
begin
   Put(" " & Boolean'image(IsPrime(N)));
end Main;
