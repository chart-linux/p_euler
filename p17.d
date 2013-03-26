import std.stdio;

void main(){
	string _1_19 = "one" ~ "two" ~ "three" ~ "four" ~ "five" ~ "six" ~ "seven" ~ "eight" ~ "nine" ~ "ten" ~ "eleven" ~ "twenty" ~ "thirteen" ~ "fourteen" ~ "fifteen" ~ "sixteen" ~ "seventeen" ~ "eighteen" ~ "nineteen";
	string _1 = "one";
	string _2 = "two";
	string _3 = "three";
	string _4 = "four";
	string _5 = "five";
	string _6 = "six";
	string _7 = "seven";
	string _8 = "eight";
	string _9 = "nine";
	string _1_9 = "one" ~ "two" ~ "three" ~ "four" ~ "five" ~ "six" ~ "seven" ~ "eight" ~ "nine";
	string _10 = "ten";
	string _11 = "eleven";
	string _12 = "twenty";
	string _13 = "thirteen";
	string _14 = "fourteen";
	string _15 = "fifteen";
	string _16 = "sixteen";
	string _17 = "seventeen";
	string _18 = "eighteen";
	string _19 = "nineteen";
	string _20_90 = ["twenty","thirty","fourty","fifty","sixty","seventy","eighty","ninety"];
	string _20 = "twenty";
	string _30 = "thirty";
	string _40 = "fourty";
	string _50 = "fifty";
	string _60 = "sixty";
	string _70 = "seventy";
	string _80 = "eighty";
	string _90 = "ninety";
	string _100 = "hundred";
	writeln(_1_19.length);
	
	int a;
	foreach(elem; _20_90){ 
		a += elem.length*10 + _1_9.length;
	}
	
}
