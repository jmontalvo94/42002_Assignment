Free Variables
H        Happiness (objective) function value
;

Positive Variables
*Integer Variables
y1        customer 1
y2        customer 2
;

Equations
Obj       objective function
cs1      constraint 1
cs2      constraint 2
cs3      constraint 3
cs4      constraint 4
cs5      constraint 5
cs6      constraint 6
cs7      constraint 7
cs8      constraint 8
;

Obj ..   H =e= 12*y1+23*y2;

cs1 ..   4*y1+7*y2 =l= 63;
cs2 ..   y1 =g= 2;
cs3 ..   y2 =g= 3;
cs4 ..   y2 =l= 7;
cs5 ..   y1 =g= 4;
cs6 ..   y2 =l= 6;
cs7 ..   y1 =g= 6;
cs8 ..   y2 =l= 5;

model happiness /all/;

solve happiness using LP maximizing H;
*solve happiness using MIP maximizing H;
