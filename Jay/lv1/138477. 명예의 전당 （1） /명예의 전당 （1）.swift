import Foundation

func solution(_ k: Int, _ score: [Int]) -> [Int] {
    var array = [Int]()
    var result = [Int]()

    for i in score {
        array.append(i)
        array.sort(by: >)
        
        if array.count > k {
            array.removeLast()
        }
        result.append(array.last!)
    }
    return result
}
