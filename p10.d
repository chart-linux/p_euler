import std.stdio, std.array, std.range, std.algorithm;

int isPrime(int x){
	
	int i = 3;
	
	if ( x == 1 ){ return 0; }
	else if ( x == 2 ){ return 2; }
	
	if ( x % 2 == 0 ){ return 0; }
	
	
	while ( i^^2 < x ){
		if ( x % i == 0 ){
			return 0;
		}
		i++;
	}
	return x;
	
}


void main(){

	int[] a; //list of the prime numbers 
	
	int[] b = iota(2,2000001).array(); //list of the numbers which will be searched
	
	int k;
	
	a ~= b.front;
	
	while(a.back^^2 < b.back){
		foreach(int i, ref elem; b){
			foreach(prime; a){
				if(elem % prime == 0){
					elem = 0;
					//writeln(k.back);
				}
			}
		}
		
		b = remove!("a == 0")(b);
		a ~= b.front;
	}
	
	foreach( elem; a ~ b){
		k = k + elem;
	}
	
	writeln(k);
	
}
