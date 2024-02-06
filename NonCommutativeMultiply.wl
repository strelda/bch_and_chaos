(* ::Package:: *)

BeginPackage["NonCommutativeMultiply`"]


Begin["`Private`"]


protected = Unprotect[NonCommutativeMultiply]


A_ ** (B_ + C_) := A ** B + A ** C
(B_ + C_ ) ** A_ := B ** A + C ** A

A_ ** c_?NumberQ :=c A
c_?NumberQ ** A_ :=c A
A_ ** (B_ c_?NumberQ) := c A**B
(A_ c_?NumberQ) ** B_  :=c A**B

A_ ** (B_ c_Rational) := c A ** B
(A_ c_Rational) ** B_ := c A ** B
A_ ** (B_ c_Power) := c A ** B
(A_ c_Power) ** B_ := c A ** B


Protect[ Release[protected] ]


End[]
EndPackage[]
