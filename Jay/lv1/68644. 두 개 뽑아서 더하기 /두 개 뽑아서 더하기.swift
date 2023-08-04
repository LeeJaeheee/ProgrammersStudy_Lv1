import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var array: [Int] = []
    for i in 0..<numbers.count {
        for j in 0..<numbers.count where i != j {
                array.append(numbers[i] + numbers[j])
            }
        }
    var result = Array(Set(array))
    result.sort(by: <)
    return result
}
