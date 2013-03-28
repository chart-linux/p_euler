import std.stdio;

bool f(int a, int b){
	
	if ( a % b == 0 ){
	
		if ( b == 20 ){
	
			return true;
	
		}else{
		
			return f( a, b + 1 );
		
		}
	
	}else{
	
		return false;
	
	}
	
}


void main() {
	
	int a = 20;
	
	while ( f( a , 1 ) == false ) {
	
		a++;
	
	}
	
	writeln(a);

}
