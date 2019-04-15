with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

package body Smallest_Factor_Module
   with SPARK_Mode is
   procedure Smallest_Factor (N : in out Positive; Factor : out Positive) is
   begin
      Factor := 2;
      while Factor <= N loop
	 pragma Loop_Invariant (Factor <= N);
	 pragma Loop_Invariant (Factor >= 2);
	 pragma Loop_Invariant (for all J in 2 .. Factor - 1 => N rem J /= 0);
	 if N rem Factor = 0 then
	    exit;
	 end if;
	 Factor := Factor + 1;
      end loop;
      N := N/Factor;
   end Smallest_Factor;
end Smallest_Factor_Module;
