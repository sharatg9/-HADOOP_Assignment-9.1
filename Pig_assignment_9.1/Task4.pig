Data = LOAD '/myfiles/pig/test1.txt' USING PigStorage(',') ; 
sub_a = foreach Data generate $1 , SUBSTRING($3,1,8);
int_A = foreach sub_a generate $0 , (int)$1 ;
B =order int_A  by $1 ;
C = limit B 1;
D = foreach C generate $0;
dump D;
