import std.stdio, std.array;

void main(){

	int[] arr;
	arr ~= 2;
	
	int a = 3;
	
	while ( arr.length < 10001 ){
		foreach( elem; arr ){
			if ( a % elem == 0 ){	
				a++;			
				break;
			} else if ( arr.back == elem ){
				arr ~= a;
				a++;
			}
		}
	}
	
	writeln(arr.back);

}
