import std.stdio;


void main(){
	
	int k = 1;
	int sum;
	
	while ( k < 1000 ) {
		
		if (k % 3 == 0) {
			sum += k;
		} else if ( k % 5 == 0 ){
			sum += k;
		}
		
		k++;
		
		}
	
	writeln(sum);
	
	k = 3;
	sum = 0;
	
	while ( k < 1000 ){
	
		sum += k;
		k += 3;
	
	}
	
	k = 5;
	while ( k < 1000){
		
		sum += k;
		k += 5;
	
	}
	
	k = 15;
	while ( k < 1000 ){
	
		sum -= k;
		k += 15;
	
	}
	writeln(sum);
	
	}
