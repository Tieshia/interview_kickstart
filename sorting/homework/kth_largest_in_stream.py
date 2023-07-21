import heapq

# "k": 2,
# "initial_stream": [4, 6],
# "append_stream": [5, 2, 20]
# output: [5, 5, 6]

# assuming initial stream is sorted

def kth_largest_in_stream(k, initial_stream, append_stream):
    # create min heap out of top k values:
    k_array = initial_stream[len(initial_stream) - 2: -1]
    # print(f'k_array: {k_array}')

    # minheap = heapq.heapify(k_array)

    kth_largest = []

    for num in append_stream:
        heapq.heappush(k_array, num)
        heapq.heappop(k_array)
        # add the root to the array
        kth_largest.append(k_array[0])
    
    return kth_largest

print(kth_largest_in_stream(2, [4, 6], [5, 2, 20]))