import std.stdio,std.range,std.algorithm;

void main(){

	int a = 1;
	int b = 2;
	int c;
	int sum = 2;
	
	while ( a + b <= 4000000 ){
	
		c = a + b;
		
		writeln(c);
		
		if ( c % 2 == 0 ){
		
			sum += c;
		}
		
		a = b;
		b = c;
	
	}
	
	writeln(sum);

}
