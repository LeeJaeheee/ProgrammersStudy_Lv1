// https://school.programmers.co.kr/learn/courses/30/lessons/176963

import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    let dict = Dictionary(uniqueKeysWithValues: zip(name, yearning))
    return photo.map { $0.reduce(0, {$0 + (dict[$1] ?? 0)})}
}
