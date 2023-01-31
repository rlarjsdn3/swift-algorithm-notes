extension Array {
    public mutating func shuffle() {
        for i in stride(from: count - 1, through: 1, by: -1) {
            let j  = Int.random(in: 0...i)
            if i != j {
                self.swapAt(i, j)
            }
        }
    }
}

public func shffledArray(_ n: Int) -> [Int] {
    var a = [Int](repeating: 0, count: n)
    for i in 0..<n {
        let j = Int.random(in: 0...i)
        a[i] = a[j]
        a[j] = i
    }
    return a
}
