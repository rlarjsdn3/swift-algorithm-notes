<img src="https://user-images.githubusercontent.com/21079970/204135410-02c4cb43-0856-46bd-b216-0516a35ec34d.png" align="center" width="150" height="150">

# Swift Algorithm Learning Notes
## Overview
> 알고리즘 학습과 [백준](https://www.acmicpc.net) 문제 풀이를 위한 `Swift` 소스코드 저장소입니다.

## Notice
* 일부 자료 구조와 알고리즘 소스 코드에는 아래와 같은 태그(tag)가 붙어있습니다.
    + `Simple` 간단하지만 비효율적인 알고리즘으로 작성된 소스 코드입니다.
    + `Optimized` 복잡하지만 효율적인 알고리즘으로 작성된 소스 코드입니다.

## Data Structures

사람들이 사물을 정리하여 저장하는 것과 마찬가지로 프로그램에서도 자료들을 정리하여 보관하는 여러 가지 구조들이 있습니다. 이를 `자료 구조(Data Structures)`라 부릅니다. 더 정확히 말해, 자료 구조는 데이터 값의 모임, 또 데이터 간의 관계, 그리고 데이터에 적용할 수 있는 함수나 명령을 의미합니다. 신중히 선택된 자료 구조는 효율적인 알고리즘을 사용할 수 있게 합니다. 이처럼 자료 구조와 알고리즘은 뗄레야 뗄 수 없는 매우 밀접한 관계를 지니고 있습니다. 효과적으로 설계된 자료 구조는 실행시간 혹은 메모리 용량과 같은 자원을 최소한으로 사용하면서 연산을 빠르게 수행하도록 도와줍니다.

자료 구조에는 여러 종류가 있으며, 이러한 각각의 자료 구조는 각자의 연산 및 목적에 맞추어져 있습니다. 예를 들어 B-트리는 데이터베이스에 효율적이며, 퀵 정렬은 많은 데이터를 빠른 시간 내 정렬할 수 있습니다. 

다양한 프로그램을 설계할 때, 어떠한 자료 구조를 선택할지는 가장 우선적으로 고려되어야 합니다. 이는 큰 시스템을 제작할 때 구현의 난이도나 최종 결과물의 성능이 자료 구조에 크게 의존한다는 것을 많은 경험이 뒷받침하기 때문이죠. 일단 자료 구조가 선택되면 적용할 알고리즘이 명확해지기 마련입니다. 때로는 반대 순서로 정해지기도 하는데, 이는 목표로 하는 연산이 특정한 알고리즘을 반드시 필요로 하며, 해당 알고리즘은 특정 자료 구조에서 가장 나은 성능을 발휘할 때와 같은 경우입니다. 

대다수의 경우 언어 차원에서 기본적으로 제공하는 `배열`, `딕셔너리`와 `집합` 자료형으로도 충분하지만, 때로는 복잡하고 화려한 자료 구조가 필요할 수도 있습니다. 어떠한 경우든, 적절한 자료 구조의 선택은 필수적이라 할 수 있습니다.

<br>

### 배열(Variation on Array)
* [Array2D](/Array2D)
* Bit Set
* Fixed Size Array
* Ordered Array
* Rootish Array Stac

### 큐(Queue)
* [Stack](/Stack)
* [Queue](/Queue)
* [Deque](/Deque)
* Priority Queue
* Ring Buffer

### 리스트(List)
* [Linked List](/Linked_List)
* Skip-List

### 트리(Tree)
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
* [Heap](/Heap)
* Fibonacci Heap
* Trie
* B-Tree
* QuadTree
* Octree

### 해싱(Hashing)
* Hash Table
* Hash Functions

### 집합(Sets)
* Bloom Filter
* Hash Set
* Multiset
* Ordered Set

### 그래프 이론(Graphs Theory)
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

## Algorithms

`알고리즘(Algorithm)`은 수학과 컴퓨터과학, 언어학 또는 엮인 분야에서 어떠한 문제를 해결하기 위해 정해진 일련의 절차입니다. 조금 더 컴퓨터과학 이론에 가깝게 표현하자면, 문제가 주어진 상태에서 문제를 해결하는 방법을 정밀하게 장치가 이해할 수 있는 언어로 기술한 것입니다. 따라서 `알고리즘`은 특정한 일을 수행하는 명령어의 집합입니다. 알고리즘이 되기 위해선 아래 조건을 충족해야 합니다.

* `입력` 0개 이상의 입력이 존재하여야 한다.
* `출력` 1개 이상의 출력이 존재하여야 한다.
* `명백성` 각 명령어의 의미는 모호하지 않고 명확해야 한다.
* `유한성` 한정된 수의 단계 후에 반드시 종료되어야 한다.
* `유효성` 각 명령어들은 종이와 연필, 또는 컴퓨터로 실행 가능한 연산이어야 한다. 

최근 하드웨어의 급속한 발전으로 속도가 점점 빨라지고 있음에도, 알고리즘의 효율은 여전히 중요한 문제 중 하나입니다. ('효율'이란 얼마나 짧은 시간 내 알고리즘을 수행할 수 있는지를 나타냅니다) 입력 자료의 양이 적은 경우는 무시해도 상관없지만 자료의 양이 많아지게 되면 그 차이가 상당할 수 있기 때문이죠. 하지만, 우리는 각기 다른 하드웨어 환경을 가지고 있기 때문에 알고리즘의 효율성을 일률적으로 분석하기에는 무리가 있습니다. 그래서 실행 하드웨어나 소프트웨어 환경에 관계없이 알고리즘의 효율성을 평가하기 위해 `시간 복잡도`을 사용합니다. 

![1](https://user-images.githubusercontent.com/21079970/215743716-73a83771-c84f-410d-b8c2-9c8080e8188c.png)

시간 복잡도는 알고리즘의 정확한 수행 시간을 측정하기보다, **입력의 개수가 $n$이 증가하였을 때, 연산의 총 횟수가 $n$에 비례하여 증가하는지, $n^2$에 비례하여 증가하는지, 아니면 각기 다른 증가 추세를 가지는지를 더 주의깊게** 관찰합니다. 복잡한 시간 복잡도의 식을 간단히 표현한 게 `빅-O 표기법`입니다. 시간 복잡도 함수 $T(n)$이 있을 때, 차수가 가장 큰 항만을 고려합니다. 

위 표를 보시면 아시겠지만, 시간 복잡도(Time Complexity)가 $O(1)$과 $O(log N)$인 알고리즘은 괜찮은 성능을 보이지만(녹색 영역), $O(N^2)$과 $O(N^3)$인 알고리즘은 매우 나쁜 성능(빨간 영역)을 보여줍니다. 일례로, 시간 복잡도가 $O(N^2)$인 [버블 정렬](/Bubble_Sort)은 6만개의 데이터 처리 시, 대략 20초의 시간이 소요됩니다. 굉장히 길죠? 

<br>

### 탐색(Searching)
* [Linear Search](/Linear_Search)
* Binary Search
* Count Occurrences
* Select Minimum / Maximum
* K-th Largest Element
* Selection Sampling
* Union-Find

### 문자열 탐색(String Search)
* Brute-Force String Search
* Boyer-Moore
* Knuth-Morris-Pratt
* Rabin-Karp Faster search by using hashing
* Longest Common Subsequence
* Z-Algorithm

### 정렬(Sorting)

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

### 압축(Compression)

* Run-Length Encoding (RLE)
* Huffman Coding

### 잡동사니(Miscellaneous)

* [Shuffle](\Shuffle)
* Comb Sort
* Convex Hull
* Miller-Rabin Primality Test
* MinimumCoinChange
* Genetic
* Myers Difference Algorithm
* [Longest Increasing Subsequence (LIS)](/Longest_Increasing_Subsequence)

### 수학(Mathematics)

* Greatest Common Divisor (GCD)
* Permutations and Combinations
* Shunting Yard Algorithm
* Karatsuba Multiplication
* Haversine Distance
* Strassen's Multiplication Matrix
* CounterClockWise

<br>

## 참고 자료
* [Wikipeida,⌜자료구조⌟, 20221130](https://ko.wikipedia.org/wiki/자료_구조)
* [Wikipeida,⌜알고리즘⌟, 20221130](https://ko.wikipedia.org/wiki/알고리즘)
* [GitHub, ⌜swift-algorithm-club⌟, 20221130](https://github.com/kodecocodes/swift-algorithm-club)
