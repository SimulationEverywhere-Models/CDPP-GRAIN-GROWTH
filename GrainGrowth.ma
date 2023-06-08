[top]
components : GrainGrowth

[GrainGrowth]
type : cell
dim : (10,10,2)
delay : transport
defaultDelayTime : 100
border : wrapped 
neighbors : GrainGrowth(-1,-1,0) GrainGrowth(-1,0,0) GrainGrowth(-1,1,0) 
neighbors : GrainGrowth(0,-1,0)  GrainGrowth(0,0,0)  GrainGrowth(0,1,0)
neighbors : GrainGrowth(1,-1,0)  GrainGrowth(1,0,0)  GrainGrowth(1,1,0)
neighbors : GrainGrowth(0,0,1)
initialvalue : 0
initialCellsValue : InitialGrain.val
localtransition : Growth-rule
zone : top-rule { (0,0,1)..(9,9,1) }


[Growth-rule]
rule : {(0,0,0)} 100 { cellpos(2)=0 and (0,0,0) != (0,0,1) and statecount(0) + statecount(1) + statecount(2) + statecount(3) + statecount(4) + statecount(5) + statecount(6) + statecount(7) - statecount((0,0,0)) - 1 <= statecount(0) + statecount(1) + statecount(2) + statecount(3) + statecount(4) + statecount(5) + statecount(6) + statecount(7) - statecount((0,0,1)) - 1 } 
rule : {(0,0,1)} 100 { cellpos(2)=0 and (0,0,0) != (0,0,1) and statecount(0) + statecount(1) + statecount(2) + statecount(3) + statecount(4) + statecount(5) + statecount(6) + statecount(7) - statecount((0,0,0)) - 1 > statecount(0) + statecount(1) + statecount(2) + statecount(3) + statecount(4) + statecount(5) + statecount(6) + statecount(7) - statecount((0,0,1)) - 1  } 
rule : {(0,0,0)} 100 { cellpos(2)=0 and (0,0,0) = (0,0,1) }

[top-rule]
rule : 0 100 { (0,0,0) = 7 }
rule : 1 100 { (0,0,0) = 0 }
rule : 2 100 { (0,0,0) = 1 }
rule : 3 100 { (0,0,0) = 2 }
rule : 4 100 { (0,0,0) = 3 }
rule : 5 100 { (0,0,0) = 4 }
rule : 6 100 { (0,0,0) = 5 }
rule : 7 100 { (0,0,0) = 6 }
