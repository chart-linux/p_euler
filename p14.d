import std.stdio, std.algorithm;

long f(long a, long k){
	if (a == 1){
		return k;
	}else if (a % 2 == 0){
		return f(a/2, k+1);
	}else{
		return f(a*3+1, k+1);
	}
}

void main(){
	int n = 1;
	long a;
	long[2] m;
	while(n < 1000000){
		a = f(n, 1);
		if (m[0] < a){
			m[0] = a;
			m[1] = n;
		}
		n++;
	}
	writeln(m[1]);
}
