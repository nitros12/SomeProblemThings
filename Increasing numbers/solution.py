"""
Calculates the solution to the described problem
"""
import unittest


def triangle(n: int) -> int:
    """Returns the nth triangle number"""
    return (n * n + n) // 2


def solution(x: int=1, y: int=1) -> int:
    """Calculate the solution to the problem"""
    return triangle(x) // 2 + (y * y - y) // 2 + (2 * x - 2) * (y - 1) // 2


class Test(unittest.TestCase):
    """
    Testing of equation
    """

    testArray = [[1, 3, 6, 10, 15, 21, 28, 36], [2, 5, 9, 14, 20, 27, 35, 44],
                 [4, 8, 13, 19, 26, 34, 43], [7, 12, 18, 25, 33, 42],
                 [11, 17, 24, 32, 41]]

    def test(self):
        for ii, i in enumerate(self.testArray):
            for ki, k in enumerate(i):
                self.assertEqual(solution(ki + 1, ii + 1), k)


if __name__ == '__main__':
    unittest.main()
