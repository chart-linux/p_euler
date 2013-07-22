import std.stdio        : writeln;
import std.range        : iota;
import std.algorithm    : map;
import std.array;

void main(){
    int i=1;
    int[] a;
    while (i < 10000){
        if (( i == sumation(sumation(i))) && ( i != sumation(i))) { a ~= i; }
        i++;
    }
    writeln(a);
    
    int sum;
    foreach(elem; a){
        sum += elem;
    }
    
    writeln(sum);
}
    
int sumation(int n){
    int i = 1;
    int sum = 0;
    while (i < n){
        // writeln(n);
        if ( n % i == 0 ){
            sum += i;
        }
        i++;
    }
    return sum;
}
