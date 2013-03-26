import std.stdio, std.range, std.array;

void main(){
	auto a = iota(21,40,2).array();
	long b = 2^^10;
	long c = 10*9*8*7*6*5*4*3*2*1;
	writeln(a);
	foreach(elem; a){
		b = b * elem;
	}
	writeln(b/c);
}
