import std.stdio;

string str_conv(string base_str, string new_str){
	base_str ~= new_str;
	//writeln(base_str);
	return base_str;
}

void main(){
	string[] one_ten         = ["","one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten"];
	string[] one_nine        = ["","one", "two", "three", "four", "five", "six", "seven", "eight", "nine"];
	string[] one_nine_nzero  = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"];
	string[] eleven_nineteen = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"];
	string[] twenty_ninety   = ["twenty","thirty","forty","fifty","sixty","seventy","eighty","ninety"];
	string   hundred         = "hundred";
	string   and             = "and";
	string   thousand        = "thousand";
	
	string   base_str = "";
	
	foreach(elem; one_ten){
		base_str = str_conv(base_str,elem);
	}
	foreach(elem; eleven_nineteen){
		base_str = str_conv(base_str,elem);
	}
	foreach(ten_d; twenty_ninety){
		foreach(one_d; one_nine){
			base_str = str_conv(base_str,ten_d ~ one_d);
		}
	}
	foreach(hundred_d; one_nine_nzero){
		foreach(elem; one_ten){
			if(elem == ""){
				base_str = str_conv(base_str,hundred_d ~ hundred ~ elem); // [one] hundred and 
			}else{
				base_str = str_conv(base_str,hundred_d ~ hundred ~ and ~ elem);
			}
		}
		foreach(elem; eleven_nineteen){
			base_str = str_conv(base_str,hundred_d ~ hundred ~ and ~ elem);
		}
		foreach(ten_d; twenty_ninety){
			foreach(one_d; one_nine){
				base_str = str_conv(base_str,hundred_d ~ hundred ~ and ~ ten_d ~ "" ~ one_d);
			}
		}
	}
	base_str = str_conv(base_str,"one" ~ thousand);
	writeln(base_str.length);
	
}
