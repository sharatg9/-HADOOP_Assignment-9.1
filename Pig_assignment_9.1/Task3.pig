Data = LOAD '/myfiles/pig/test1.txt' USING PigStorage(',') ; 
B = order Data by $5 desc;
C = limit B 10;
D = foreach C generate $0 , $6 ;
dump D ;
