// 수열의 정보를 저장한 배열 선언
var array: [Int] = [10, 20, 10, 30, 20, 50]
var len: Int = array.count

// 연산 결과를 저장하기 위한 DP 테이블 선언
var dp: [Int] = [Int](repeating: 0, count: len)

// 다이내믹 프로그래밍 수행(바텀업) - O(n^2)
for i in stride(from: 0, to: len, by: 1) {
    var count: Int = 0
    for j in stride(from: 0, to: i, by: 1) {
        if array[i] > array[j] {
            count = max(dp[j], count)
        }
    }
    dp[i] = count + 1
}
print(dp.max()!) // 결과값 출력하기
