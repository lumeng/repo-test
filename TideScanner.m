(* ::Package:: *)

(* Mathematica package *)

BeginPackage["CalculateScan`TideScanner`"]
Needs["CalculateScan`CommonSymbols`"];
Begin["`Private`"]
AssociatedScanner[TideScanner]

disclaimer[args_] :=
  Column[{GrayComment["\:4f7f\:7528"<>If[("ExtendedStart" /. args)[[1]] < 1983, "20 \:5e74\:7684", ""] <>
                      "\:5386\:53f2\:6570\:636e\:8ba1\:7b97, \:4e0d\:8003\:8651\:5929\:6c14\:60c5\:51b5\:7b49\:5176\:4ed6\:56e0\:7d20\n" <>
          (* " Not to be used for any navigational purpose.  " *)
            If[!("MoreDays" /. args) && ("More" /. args) == 0,
               "times in " <> (TZString@@ ({"Time", "CurrentTimeZones"} /. args)) <> " | ",
               ""
            ] <> "\:6f6e\:4f4d\:9ad8\:5ea6\:76f8\:5bf9\:4e8e "<>z0ToText[TideData["Station" /. args, "Z0", "WithRespectTo"]],
            BaseStyle->"Caption"]
          }]
 
 commentSwapper[r_]:= Row[
 	Cases[Reverse[r[[1]]], x_ /; x != " "]
 ]
 
 End[]
 EndPackage[]
