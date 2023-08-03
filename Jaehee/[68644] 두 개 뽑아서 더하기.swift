https://school.programmers.co.kr/learn/courses/30/lessons/68644

import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var numSet: Set<Int> = []
    let count = numbers.count
    for i in 0..<count {
        for j in i+1..<count {
            numSet.insert(numbers[i] + numbers[j])
        }
    }
    return numSet.sorted()
}
