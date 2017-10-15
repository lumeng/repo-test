(* ::Package:: *)

(* Mathematica package *)

BeginPackage["CalculateScan`TideScanner`"]
Needs["CalculateScan`CommonSymbols`"];
Begin["`Private`"]
AssociatedScanner[TideScanner]

disclaimer[args_] :=
  Column[{GrayComment["\:4f7f\:7528"<>If[("ExtendedStart" /. args)[[1]] < 1983, "20 \:5e74\:7684", ""] <>
                      "\:6b77\:53f2\:6578\:64da\:8a08\:7b97, \:4e0d\:8003\:616e\:5929\:6c23\:60c5\:6cc1\:7b49\:56e0\:7d20\n" <>
          (* " Not to be used for any navigational purpose.  " *)
            If[!("MoreDays" /. args) && ("More" /. args) == 0,
               "times in " <> (TZString@@ ({"Time", "CurrentTimeZones"} /. args)) <> " | ",
               ""
            ] <> "\:6f6e\:4f4d\:9ad8\:5ea6\:76f8\:5c0d\:65bc "<>z0ToText[TideData["Station" /. args, "Z0", "WithRespectTo"]],
            BaseStyle->"Caption"]
          }]
 
 commentSwapper[r_]:= Row[
 	Cases[Reverse[r[[1]]], x_ /; x != " "]
 ]
 
 End[]
 EndPackage[]
