import std.stdio, std.array, std.range, std.algorithm;

void main(){
	
	int[] a;
	int[] b = iota(2, 2000000, 1).array();
	
	while (true){
		a ~= b.front;
		
		foreach (ref elem; b){
			if (elem % a.back == 0){
				elem = 0;
			}
		}
		b = remove!("a == 0")(b);
		
		if (a.back^^2 > b.back){
			break;
		}
		
	}
	
	int[] c;
	c = a ~ b;
	
	long k; // intでやろうとすると桁があふれて死ぬ
	foreach (elem; c){
		k += elem;
	}
	
	writeln(k);
}
