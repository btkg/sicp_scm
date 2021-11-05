def ordered_triple(n, s):
    for i in range(0, n+1):
        for j in range(0, n+1):
            for k in range(0, n+1):
                if i+j+k == s:
                    if (i != j) & (i != k) & (j != k):
                        print((i, j, k))


if __name__ == "__main__":
    n = int(input("n: "))
    s = int(input("s: "))
    ordered_triple(n, s)
