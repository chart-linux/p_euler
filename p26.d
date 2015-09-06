import std.stdio;
import std.algorithm;
import std.math;

void main(string[] args){
    int d;
    int len = 0;
    int l;

    for (int i=1; i < 1000; i++){
        l = f(i);
        if (len < l){
            d = i;
            len = l;
        }
    }
    writeln(d);
}

int f(int divisor){
    int[] list_of_mod;
    list_of_mod.length = 100;
    int divided = 1;
    
    for(int i=0;;i++){
        if(i == list_of_mod.length){
            list_of_mod.length *= 2;
        }
        if (canFind(list_of_mod, divided % divisor)){
            list_of_mod[i] = divided % divisor;
            break;
        }
        list_of_mod[i] = divided % divisor;
        divided = (divided % divisor) * 10;
    }

    int firstIndex = cast(int)countUntil(list_of_mod,divided % divisor);
    int length_of_recurring_cycle = cast(int)countUntil(list_of_mod[(firstIndex+1)..$], divided % divisor) + 1;
    return length_of_recurring_cycle;
}
