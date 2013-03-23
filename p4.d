import std.conv,std.stdio,std.array;

bool ispal(string sum){

	string sum_string = sum;
	
	if ( sum_string.back == sum_string.front ){
	
		sum_string.popFront();
		sum_string.popBack();
		
		if ( sum_string.length == 1 ){
		
			return true;
		
		} else if ( sum_string.length == 2 ){
		
			if ( sum_string.front == sum_string.back ){
			
				return true;
			
			} else {
			
				return false;
			
			}
		
		} else {
		
			return ispal(sum_string);
		
		}
	
	}else{
	
		return false;
	
	}
	
}
	
	



void main(){

	int a = 100;
	int b = 100;
	int sum;
	int c,d;
	int largest_number;
		
	while ( a < 1000 ){
		
		while ( b < 1000 ){
		
			sum = a * b;
			
			if ( ispal(to!(string)(sum)) ){
			
				if ( largest_number < sum ){
				
					largest_number = sum;
					c = a;
					d = b;
				
				}
			
			}
			
			b++;
			
		}
		
		b = 100;
		
		a++;
			
		
	}
	
	writefln("%d x %d = %d \n This is the largest palindromic number made from the product of two 3-digit numbers!", c, d, largest_number);

}
