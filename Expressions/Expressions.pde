int exp1 = 3 - 5 - 4 - 23;
int exp2 = 24 / 2 / 3 / 4;
int exp3 = 2 % 5 % 2;
int exp4 = 9 * 7 * 3;
int exp5 = 3 + 3 + 3 + 3 + 3 + 3 + 7;
boolean bExp1 = false || (exp5 > exp3) && (exp2 > exp3) || false;
boolean bExp2 = false || bExp1 && (exp1 < exp2);
boolean bExp3 = bExp2 && (exp5 > exp3);
boolean bExp4 = exp3 < 0 || exp3 > 0;
boolean bExp5 = true && !bExp4 || !bExp2;
println(exp1,exp2,exp3,exp4,exp5);
println(bExp1,bExp2,bExp3,bExp4,bExp5);