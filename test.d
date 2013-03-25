import std.stdio, std.algorithm;

void main(){
	auto b = [2,3,4,5,6,7,8,9,10];
	
	writeln(b);
	b = remove!("a % b.front == 0")(b);
	writeln(b);
}
