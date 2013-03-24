import std.stdio;

void main(){

	int a;
	int b = 1;

	while ( b <= 100 ) {
	
		a += b;
		b++;
	
	}
	
	a = a * a;
	
	int c;
	int d = 1;
	
	while ( d <= 100){
	
		c += d * d;
		d++;
	
	}
	
	writeln( a - c );

}
