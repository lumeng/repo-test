(* ::Package:: *)

FO[
    Opt["instantaneous"], "rate", "of", "change",
    Opt["of"], 
    Opt["a"|"an"|"the"|"some"|"one"],
    Opt["problem"|"problems"|"function"|"functions"|
    "expression's"|"formula's"|"implicitly"]
]     


FO[
    ..., 
    Opt["a"|"an"|"the"|"some"|"one"|"xxxx"|...],
    Opt["problem"|"problems"|"function"|"functions"]
    ...
]
       
FO[
    ..., 
    Opt[
        FO["male article"|"an"|, "m noun"|"problems"] | FO["f article"|"an"|, "f noun"|"problems"]
    ]
]



{
    AO[
    Opt[Syn["howto", "Generic"]],
    Opt["online"],
    "derivative's"|"differentiate's"|"derivate's"|"differentiation's"|"derivation's"|"differential's",
      "calculator"|"cal"|"calculations"|"solver"
        ],
        
        
      FO[
        Opt[Syn["howto", "Generic"]],
        Opt["first"|"1st"|"partial" |"symbolic"|"symbollicaly"(*|
        "implicit"|"implicitly"*)|"numeric"|"numerically"],
        "derivative's"|"differentiate's"|"derivate's"|"differentiation's"|"derivation's"|"differential's"|
            "d/dt"|"d/dx"|"d/dy"|"diff"|"dif"|"der"|
            FL["derivada","Spanish"]|FL["derivadas","Spanish"]|
            FO[Opt["instantaneous"],"rate","of","change"],
        Opt["of"], 
        Opt["a"|"an"|"the"|"some"|"one"],
        Opt["problem"|"problems"|"function"|"functions"|
        "expression's"|"formula's"|"implicitly"(*|"equation"|"equations"*)]
      ],
      
      
      AO[FO[Opt["partial" |"symbolic"|"symbollicaly"|"numeric"|"numerically"],
        "derive's"|"derivative's"|"differentiate's"|"derivate's"|"differentiation's"|"derivation's"|"differential's"|
            FL["derivada","Spanish"]|FL["derivadas","Spanish"]],
            FO[Opt["of"],"dx"|"dy/dx"|"dt"|"dy/dt"|"dx/dt"|"dy"|"dz/dy"|"command"]]
  }

Tue Apr 17 14:04:34 PDT 2018
