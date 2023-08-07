import Foundation

func solution(_ food:[Int]) -> String {
    var leftArray: [String] = []
    var rightArray: [String] = []
    
    for i in 1..<food.count {
        var amount = food[i]
        if amount % 2 != 0 {
            amount -= 1
        }
        
        if amount <= 1 {
            continue
        }
        
        let foodType = String(i)
        for _ in 0..<(amount / 2) {
            leftArray.append(foodType)
        }
    }
    
    rightArray = leftArray.reversed()
    var fullArray = leftArray
    fullArray.append("0")
    fullArray += rightArray
    
    let result = fullArray.joined()
    return result
}
