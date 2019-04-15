package body Poly with SPARK_Mode is
   function Horner (X : Integer; A : Vector) return Integer is
      Res : Integer := 0;
      Res2: Integer := 0 with Ghost;
   begin
      for I in reverse A'Range loop
	 Res := Res*X + A(I);
	 Res2:= Res2+A(I)*(X**(I-A'First));
	 pragma Loop_Invariant(Res*(X**(I-A'First)) = Res2);
      end loop;
      pragma Assert(Res = Res2);
      return Res;
   end Horner;
end Poly;
