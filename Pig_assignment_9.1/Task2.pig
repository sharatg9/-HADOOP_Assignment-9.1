Data = LOAD '/myfiles/pig/test1.txt' USING PigStorage(',') ; 
B = order Data by $5 DESC ;
C = limit B 10;
D = foreach C generate $0, $5 ;
dump D;
