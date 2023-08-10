import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    var dic: [String: Int] = [:]
    var array = [Int]()
    for i in 0..<name.count {
        dic[name[i]] = yearning[i]
    }
    for i in photo {
        var result = 0
        for j in i {
            if let value = dic[j] {
                result += value
            }
        }
        array.append(result)
    }
    return array
}
