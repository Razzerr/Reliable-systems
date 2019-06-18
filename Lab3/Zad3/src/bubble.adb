package body Bubble with SPARK_Mode is
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
	    pragma Loop_Invariant(Bubbled(A(A'First..J+1)));
	    pragma Loop_Invariant(for all M in J..J+1 => (for some N in A'Range => A(M) = A'Loop_Entry(Inner)(N))); --Swap didn't introduce new elements
	    pragma Loop_Invariant(for all M in A'First..I+1 => (for some N in A'First..I+1 => A(M) = A'Loop_Entry(Inner)(N))); --All the non-sorted elements remained the same
	    pragma Loop_Invariant(for all M in I+2..A'Last => A(M) = A'Loop_Entry(Inner)(M)); --Inner didn't change sorted elements
	 end loop Inner;
	 pragma Loop_Invariant(Bubbled(A(A'First..I+1)));
	 pragma Loop_Invariant(Sorted(A(I..A'Last)));
      end loop Outer;
   end Sort;
end Bubble;
