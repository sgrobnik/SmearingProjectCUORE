import sys
import math
import numpy as np

def a_subtract(A, B):
    C = A.copy()  # Create a copy of A

    for element in set(B):
        count_A = A.count(element)
        count_B = B.count(element)
    
        if count_A >= count_B:
            for _ in range(count_B):
                C.remove(element)
            
        else:
            for element in B:
                if element in A:
                    A.remove(element)

return C