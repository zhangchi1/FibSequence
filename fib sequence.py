#!/usr/bin/env python3
"""
@author: chizhang
"""

def quickFib(n):
    fib_list = [1,1]
    if n == 0 or n == 1:
            return 1
    else: 
        for i in range(2,n+1):
            pre1 = fib_list[-1]
            pre2 = fib_list[-2]
            fib_list.append(pre1+pre2)
        return fib_list[-1]

def slowFib(n):
    if n ==0 or n == 1:
        return 1
    else:
        return slowFib(n-1) +slowFib(n-2)
