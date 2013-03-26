import std.stdio;

int f(int n){
	int i = 1,k;
	while(i^^2 < n ){
		if(n % i == 0){
			k++;
		}
		i++;
	}
	if(k >= 250){
		return true;
	}else{
		return false;
	}
}

void main(){
	
	int k,t;
	
	do{
		k++;
		t = t + k;
	}while(f(t) == false);
	writeln(t);
}
