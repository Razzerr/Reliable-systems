package body Bubble2 with SPARK_Mode is
   procedure Sort (A : in out Arr)
   is
      Temp : Integer;
   begin
       Outer : for I in reverse A'First..A'Last-1 loop
         Inner : for J in A'First..I loop
            if A(J) > A(J+1) then
               Temp := A(J);
               A(J) := A(J+1);
               A(J+1) := Temp;
	    end if;
	    pragma Loop_Invariant(for all M in A'Range => (for some N in A'Range => A(M) = A'Loop_Entry(Inner)(N)));
         end loop Inner;            
	 pragma Loop_Invariant(for all M in A'Range => (for some N in A'Range => A(M) = A'Loop_Entry(Outer)(N)));
      end loop Outer;
   end Sort;
end Bubble2;
