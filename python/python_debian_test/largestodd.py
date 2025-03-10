import numpy as np

def largestOdd(arr):
    odds = []
    for i in range(len(arr)):
        if arr[i] % 2 == 1:
            odds.append(arr[i])
    if len(odds) == 0:
        print("No odd numbers in the list")
        return None
    else:
        max = odds[0]
        for i in range(len(odds)):
            if odds[i] > max:
                max = odds[i]
        print("The largest odd number in the list is: ", max)
        return max

arr = np.array([4, 3, 9, 2, 8, 2, 0, 3, 0, 2, 12, 9, 3, 13, 7, 3])
largestOdd(arr)
