if __name__ == '__main__':
    fibonacci_sequense = [1]
    next_fib_number = 2
    while next_fib_number <= 4000000:
        fibonacci_sequense.append(next_fib_number)
        previous_fib_number = fibonacci_sequense[-2]
        next_fib_number = next_fib_number + previous_fib_number
    ans = 0
    for fib in fibonacci_sequense:
        if fib % 2 == 0:
            ans += fib
    print(ans)
