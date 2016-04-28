fib_seq = 1:2:(zipWith (+) fib_seq (tail fib_seq))

main = print $ sum $ filter even $ takeWhile (<= 4000000) fib_seq
