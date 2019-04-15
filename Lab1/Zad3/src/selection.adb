package body selection with SPARK_Mode is

   procedure Sort (A: in out Arr) is 
      idx: Integer;
      tmp : Integer;
  begin
      for i in Integer range A'First .. A'Last loop
         idx := i;
         for j in Integer range i .. A'Last loop
            if(A(idx) > A(j)) then
               idx := j; 
            end if;
            pragma Loop_Invariant(idx in i .. j);
	    pragma Loop_Invariant(for all nextVal in i .. j => A(idx) <= A(nextVal));
         end loop;
         tmp := A(idx);
         A(idx) := A(i);
         A(i) := tmp;
         pragma Loop_Invariant(for all nextVal in i .. A'Last => A(nextVal) >= A(i));
         pragma Loop_Invariant(for all prevVal in A'First .. i - 1 => A(prevVal) <= A(prevVal+1));
      end loop;
   end Sort;
end Selection;
