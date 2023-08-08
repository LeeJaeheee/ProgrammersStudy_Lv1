import Foundation

func solution(_ s:String) -> [Int] {
    var dic: [Character: Int] = [:]
    var array: [Int] = []
    
    for (index, char) in s.enumerated() {
        if let lastIndex = dic[char] {
            array.append(index - lastIndex)
        } else {
            array.append(-1)
        }
        dic[char] = index
    }
    return array
}
