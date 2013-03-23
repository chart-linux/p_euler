import std.stdio,std.range,std.algorithm;

void main() {

	int i = 2;
	int k;
	
	long sum = 600851475143;
	
	while ( sum != 1 ){
	
		if ( sum % i == 0 ){
			sum = sum / i;
			k = i;
		}else{
			i++;
		}
	
	}
	
	writeln(k);
	
}
