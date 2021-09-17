import math


def pascal(n):
    a = list(range(0, n))
    if n == 1:
        a[0] = 1
        return a
    elif n == 2:
        a[0] = 1
        a[1] = 1
        return a
    else:
        a[0] = a[n-1] = 1

    for i in range(1, int(n/2)+1):
        a[i] = a[n-i-1] = pascal(n-1)[i-1] + pascal(n-1)[i]

    return a


if __name__ == "__main__":
    n = int(input())
    a = pascal(n)
    print(a)
