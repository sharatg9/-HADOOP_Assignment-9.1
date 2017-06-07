Data = LOAD '/demo/test1.txt' USING PigStorage(',') ; 
B = group Data by $1 ;
C = foreach B generate group , SUM(Data.$5);
Dump C; 
