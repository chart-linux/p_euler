import itertools as it
from math import sqrt

class Prime(object):
    def __init__(self,max_n):
        self.cache = [True for _ in range(0, max_n + 1)]
        i = 2
        while i * i <= max_n:
            if self.cache[i]:
                j = i + i
                while j <= max_n:
                    self.cache[j] = False
                    j += i
            i += 1

    def is_prime(self,n):
        return self.cache[n]


if __name__ == "__main__":
    p = Prime(10**8)
    print(len(p.cache))
    product = it.product(range(-999,1000,2),range(-999,1000,2))
    
    n = 0
    for a,b in product:
        print(n**2+a*n+b, end="")
        print(" ", end="")
        print((a,b,n))
        while p.is_prime(n**2+a*n+b):
            n = n + 1
            abmul = a * b

    print(abmul)
