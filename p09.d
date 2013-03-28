import std.stdio;

void main(){
	
	int m,n;
	int a,b,c;
	
	n = 1;
	m = n + 1;
	
	while ( n <= 30 ) {
		
		if ( 2 * m * m + 2 * m * n == 1000 ){
			
			a = m * m - n * n;
			b = 2 * m * n;		
			c = m * m + n * n;
			
			writeln( a * b * c );
			break;
			
		}else if ( m < 30 ){
			
			m++;
			
		}else{
			
			n++;
			m = n + 1;
		
		}
	}

}
