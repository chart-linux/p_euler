class Fib(object):
    def __init__(self):
        self.cache = {
            1:1,
            2:1,
        }

    def fib(self, n):
        if n in self.cache:
            return self.cache[n]
        else:
            f = self.fib(n - 1) + self.fib(n - 2)
            self.cache[n] = f
            return f

if __name__ == "__main__":
    f = Fib()

    n = 1
    while True :
        if len(str(f.fib(n))) >= 1000:
            print(n)
            break
        else:
            n = n + 1
