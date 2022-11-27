public struct Array2D<T> {
    public let rows: Int
    public let columns: Int
    fileprivate var array: [T]
    
    public init(rows: Int, columns: Int, initialValue: T) {
        self.rows = rows
        self.columns = columns
        array = [T](repeating: initialValue, count: rows * columns)
    }
    
    public subscript(row: Int, column: Int) -> T {
        get {
            precondition(column < columns, "Column \(column) Index is out of range. Array<T>(columns: \(column), rows: \(rows))")
            precondition(row < rows, "Row \(row) Index is out of range. Array<T>(columns: \(columns), rows: \(rows))")
            return array[row * columns + column]
        }
        set {
            precondition(column < columns, "Column \(column) Index is out of range. Array<T>(columns: \(column), rows: \(rows))")
            precondition(row < rows, "Row \(row) Index is out of range. Array<T>(columns: \(columns), rows: \(rows))")
            array[row * columns + column] = newValue
        }
    }
}
