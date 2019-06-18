package body IsPrimeModule
   with SPARK_Mode is
   function IsPrime(N : in Positive) return Boolean is
   Result : Boolean := True;
   begin
      for I in 2 .. N-1 loop
         if N rem I = 0 then
	    Result := False;
	    exit;
         end if;
         pragma Loop_Invariant((for all J in 2 .. I  => N rem J /= 0) = Result);
      end loop;
      return Result;
   end IsPrime;
end IsPrimeModule;
