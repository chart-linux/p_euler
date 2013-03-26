import std.stdio;

int[] extended_int(int[] a, int b){
	int[] k;
	a[] *= b;
	foreach(int i, ref elem; a){
		if(elem >= 10){
			elem = elem - 10;
			k ~= i;
		}
	}
	
	foreach(elem; k){
		if(a.length == elem + 1){
			a.length += 1;
		}
		a[elem + 1] += 1;
	}
	
	return a;
}

void main(){
	int[] a = [1];
	for(int i = 1; i <=1000; i++){
		a = extended_int(a, 2);
	}

	int b;
	foreach(elem; a){
		b += elem;
	}
	writeln(b);
}
