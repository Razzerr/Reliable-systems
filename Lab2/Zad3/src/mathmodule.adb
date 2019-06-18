package body MathModule
   with SPARK_Mode is

   function Sqrt (X : Float; Tolerance : Float) return Float
   is 
      approximation : Float;
   begin
      if X = 0.0 then return 0.0;
      else if X = 1.0 then return 1.0;
	 end if;
      end if;
      approximation := X;
      while abs(X - approximation**2) > X * Tolerance loop
	 approximation := (approximation + X/approximation) * 0.5;
	 pragma Loop_Invariant (if X < 1.0 then (approximation < 1.0 and approximation > X)
			 else (if X > 1.0 then (approximation > 1.0 and approximation < X)));	
      end loop;

      pragma Assert(abs(X - approximation ** 2) <= X * Tolerance);
      
      return approximation;
   end Sqrt;

end MathModule;
