BeginPackage["CalculateUtilities`TextUtilities`"]

Needs["CalculateScan`CommonSymbols`"]
Needs["CalculateParse`Content`Calculate`"]
Needs["CalculateParse`ExportedFunctions`"]
Needs["CalculateParse`GeneralLibrary`"]

Begin["`Private`"]

Clear[ordinalform]
ordinalform /: MakeBoxes[ordinalform[n:_Integer?NonNegative | _Symbol | _CalculateSymbol], TraditionalForm] :=
	RowBox[{MakeBoxes["\:7b2c"], "\[NoBreak]", MakeBoxes[n, TraditionalForm]}]

(* Fallback case *)
ordinalform /: MakeBoxes[ordinalform[n_, __], TraditionalForm] := With[{mb = MakeBoxes[ordinalform[n], TraditionalForm]}, 
	mb /; ! MatchQ[mb, RowBox[{"ordinalform", ___}]]
];

SetOptions[commaList, {
	"SerialComma" -> False,
	"Separator" -> "\:548c",
	"SeparatorWhitespace" -> "\[InvisibleSpace]",
	"CommaWhitespace" -> "\[InvisibleSpace]"
}]

End[]
EndPackage[]
