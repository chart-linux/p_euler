from itertools import takewhile

def fib(first, second):
    current_fib = first
    next_fib = second
    while True:
        yield current_fib
        current_fib, next_fib = next_fib, next_fib + current_fib

print(sum(filter(lambda x: x % 2 == 0, takewhile(lambda x: x <= 4000000, fib(1,2)))))
