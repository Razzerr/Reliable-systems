with Ada.Text_IO; use Ada.Text_IO;

package body Max2
   with SPARK_Mode is
   function FindMax2 (V : Vector) return Integer is
      fMax : Integer := 0;
      sMax : Integer := 0;
   begin
      for I in V'Range loop
	 if V(I) > fMax then
	    sMax := fMax;
	    fMax := V(I);
	 end if;
	 if V(I) < fMax and V(I) > sMax then
	    sMax := V(I);
	 end if;
    	 pragma Loop_Invariant (fMax > sMax);
    	 pragma Loop_Invariant (for all J in V'First..I => (if V(J) /= fMax then sMax >= V(J)));
	 pragma Loop_Invariant (for some J in V'First..I => fMax = V(J));
	 pragma Loop_Invariant (if sMax /= 0 then (for some J in V'First..I => sMax = V(J)));
      end loop;
      return sMax;
   end FindMax2;
end Max2;
