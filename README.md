# Objective-C Retain Cycle Memory Leak

This repository demonstrates a common memory leak issue in Objective-C caused by retain cycles.  The example shows two classes, `MyClass` and `AnotherClass`, each holding a strong reference to the other. This creates a cycle where neither object can be deallocated, resulting in a memory leak.

The `bug.m` file contains the problematic code.  The `bugSolution.m` file shows how to resolve the issue by using weak references to break the retain cycle.

## How to Reproduce

1. Clone the repository.
2. Open the project in Xcode.
3. Run the application and observe the memory usage (using instruments).
4. Compare memory usage before and after applying the fix in `bugSolution.m`

## Solution

The solution involves using a `weak` property in one of the classes to prevent the retain cycle. See `bugSolution.m` for the corrected code.