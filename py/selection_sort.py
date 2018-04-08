def findSmallest(arr):
    smallest = arr[0]
    smallest_index = 0
    for i in range(1, len(arr)):
        print(">> {0},{1},{2}".format(smallest, smallest_index, arr[i]))
        if arr[i] < smallest:            
            smallest = arr[i]
            smallest_index = i
    return smallest_index


def selectionSort(arr):
    newArr = []
    for i in range(len(arr)):
        print("arr => ", arr)
        smallest = findSmallest(arr)
        print("smallest => ", smallest)
        newArr.append(arr.pop(smallest)) # pop은 꺼낸 후 제거된다. 
    return newArr

print(selectionSort([5, 3, 6, 2, 10]))    
