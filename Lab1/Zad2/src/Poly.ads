package Poly with SPARK_Mode is
   type Vector is array (Natural range <>) of Integer;
   function Horner (X : Integer; A : Vector) return Integer with
     Pre  => A'Length > 0,
     Post => Horner'Result in Integer;
end Poly;
