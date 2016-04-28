import itertools as it
from math import sqrt

class Prime(object):
    def __init__(self):
        self.max_n = 2
        self.prime_list = [2]
        self.update(15000)
        self.prime_set = set(self.prime_list)

    def is_prime(self,n):
        return n in self.prime_set

    def update(self,n):
        for candidate in range(self.max_n + 1,n+1):
            if all(map(lambda prime: candidate % prime != 0 , it.takewhile(lambda x: x**2 < candidate, self.prime_list))):
                self.prime_list.append(candidate)
        self.max_n = n

import unittest
class PrimeTest(unittest.TestCase):
    def test_prime(self):
        p = Prime()
        for n in [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97,101,103,107,109,113,127,131,137,139,149,151,157,163,167,173,179,181,191,193,197,199,211,223,227,229,233,239,241,251,257,263,269]:
            self.assertTrue(p.is_prime(n))

if __name__ == "__main__":
    p = Prime()
    product = list(it.product(range(-999,1000),range(2,1000)))
    c = it.count(0)

    while len(product) > 1:
        n = c.__next__()
        product = list(filter(lambda ab: p.is_prime(n**2 + ab[0]*n + ab[1]),product))

    print(p.prime_list)
    print(product[0][0] * product[0][1])
    print(n)
