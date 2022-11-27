## Swift Algorithm Notes
* 알고리즘 학습과 [백준](https://www.acmicpc.net) 문제 풀이를 위한 `스위프트` 소스코드 저장소입니다.
* `Swift_Algorithm_Notes`는 누리집의 갖가지 정보를 짬뽕시켜 만들어진 리포지토리입니다. 피드백은 언제든 환영입니다.
* `스위프트`에 익숙치 않으시다면 [여기](https://www.swift.org)에서 충분히 학습 후 열람해주세요. 감사합니다.

## Data Structures
사람들이 사물을 정리하여 저장하는 것과 마찬가지로 프로그램에서도 자료들을 정리하여 보관하는 여러 가지 구조들이 있습니다. 이를 `자료구조(Data Structures)`라 부릅니다. 더 정확히 말해, 자료구조는 데이터 값의 모임, 또 데이터 간의 관계, 그리고 데이터에 적용할 수 있는 함수나 명령을 의미합니다. 신중히 선택된 자료 구조는 효율적인 알고리즘을 사용할 수 있게 합니다. 이처럼 자료구조와 알고리즘은 뗄레야 뗄 수 없는 매우 밀접한 관계를 지니고 있습니다. 효과적으로 설계된 자료구조는 실행시간 혹은 메모리 용량과 같은 자원을 최소한으로 사용하면서 연산을 수행하도록 도와줍니다.

자료구조에는 여러 종류가 있으며, 이러한 각각의 자료구조는 각자의 연산 및 목적에 맞추어져 있습니다. 예를 들어 B-트리는 데이터베이스에 효율적이며, 퀵 정렬은 많은 데이터를 빠른 시간 내 정렬할 수 있습니다. 

다양한 프로그램을 설계할 때, 어떠한 자료구조를 선택할지는 가장 우선적으로 고려되어야 합니다. 이는 큰 시스템을 제작할 때 구현의 난이도나 최종 결과물의 성능이 자료구조에 크게 의존한다는 것을 많은 경험이 뒷받침하기 때문이죠. 일단 자료구조가 선택되면 적용할 알고리즘은 상대적이로 명확해지기 마련입니다. 때로는 반대 순서로 정해지기도 하는데, 이는 목표로 하는 연산이 특정한 알고리즘을 반드시 필요로 하며, 해당 알고리즘은 특정 자료구조에서 가장 나은 성능을 발휘할 때와 같은 경우입니다. 

대다수의 경우 언어 차원에서 기본적으로 제공하는 `배열`, `딕셔너리`와 `집합` 자료형으로도 충분하지만, 때로는 복잡하고 화려한 자료구조가 필요할 수도 있습니다. 어떠한 경우든, 적절한 자료구조의 선택은 필수적이라 할 수 있습니다.

### Variations on arrays
* [Array2D](/Array2D)
* Bit Set
* Fixed Size Array
* Ordered Array
* Rootish Array Stac

### Queue
* [Stack](/Stack)
* [Queue](/Queue)
* Deque
* Priority Queue
* Ring Buffer

### Lists
* Linked List
* Skip-List

### Trees
* Tree
* Binary Tree
* Binary Search Tree (BST)
* Red-Black Tree
* Splay Tree
* Threaded Binary Tree
* Segment Tree
    + Lazy Propagation
* KD-Tree
* Sparse Table
* Heap
* Fibonacci Heap
* Trie
* B-Tree
* QuadTree
* Octree

### Hashing
* Hash Table
* Hash Functions

### Sets
* Bloom Filter
* Hash Set
* Multiset
* Ordered Set

### Graphs
* Graph
* Breadth-First Search (BFS)
* Depth-First Search (DFS)
* Shortest Path on an unweighted tree
* Single-Source Shortest Paths
* Minimum Spanning Tree on an unweighted tree
* Minimum Spanning Tree
* All-Pairs Shortest Paths
* Dijkstra's shortest path algorithm
* A-Star

<br>

## The Algorithms

### Searching
* Linear Search. Find an element in an array.
* Binary Search. Quickly find elements in a sorted array.
* Count Occurrences. Count how often a value appears in an array.
* Select Minimum / Maximum. Find the minimum/maximum value in an array.
* K-th Largest Element. Find the k-th largest element in an array, such as the median.
* Selection Sampling. Randomly choose a bunch of items from a collection.
* Union-Find. Keeps track of disjoint sets and lets you quickly merge them.

### String Search
* Brute-Force String Search. A naive method.
* Boyer-Moore. A fast method to search for substrings. It skips ahead based on a look-up table, to avoid looking at every character in the text.
* Knuth-Morris-Pratt. A linear-time string algorithm that returns indexes of all occurrencies of a given pattern.
* Rabin-Karp Faster search by using hashing.
* Longest Common Subsequence. Find the longest sequence of characters that appear in the same order in both strings.
* Z-Algorithm. Finds all instances of a pattern in a String, and returns the indexes of where the pattern starts within the String.

### Sorting

It's fun to see how sorting algorithms work, but in practice you'll almost never have to provide your own sorting routines. Swift's own sort() is more than up to the job. But if you're curious, read on...

Basic sorts:

* Insertion Sort
* Selection Sort
* Shell Sort

Fast sorts:

* Quick Sort
* Merge Sort
* Heap Sort

Hybrid sorts:

* Intro Sort

Special-purpose sorts:

* Counting Sort
* Radix Sort
* Topological Sort

Bad sorting algorithms (don't use these!):

* Bubble Sort
* Slow Sort

### Compression

* Run-Length Encoding (RLE). Store repeated values as a single byte and a count.
* Huffman Coding. Store more common elements using a smaller number of bits.

### Miscellaneous

* Shuffle. Randomly rearranges the contents of an array.
* Comb Sort. An improve upon the Bubble Sort algorithm.
* Convex Hull.
* Miller-Rabin Primality Test. Is the number a prime number?
* MinimumCoinChange. A showcase for dynamic programming.
* Genetic. A simple example on how to slowly mutate a value to its ideal form, in the context of biological evolution.
* Myers Difference Algorithm. Finding the longest common subsequence of two sequences.

### Mathematics

* Greatest Common Divisor (GCD). Special bonus: the least common multiple.
* Permutations and Combinations. Get your combinatorics on!
* Shunting Yard Algorithm. Convert infix expressions to postfix.
* Karatsuba Multiplication. Another take on elementary multiplication.
* Haversine Distance. Calculating the distance between 2 points from a sphere.
* Strassen's Multiplication Matrix. Efficient way to handle matrix multiplication.
* CounterClockWise. Determining the area of a simple polygon.

<br>

## References
* [swift-algorithm-club](https://github.com/kodecocodes/swift-algorithm-club)
