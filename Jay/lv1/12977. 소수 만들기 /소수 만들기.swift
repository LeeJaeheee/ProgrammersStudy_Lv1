import Foundation

func solution(_ nums:[Int]) -> Int {
    let n = nums.count
    var count = 0

    func isPrime(_ num: Int) -> Bool {
        if num < 2 {
            return false
        }
        for i in 2..<num {
            if num % i == 0 {
                return false
            }
        }
        return true
    }

    for i in 0..<n {
        for j in (i + 1)..<n {
            for k in (j + 1)..<n {
                let sum = nums[i] + nums[j] + nums[k]
                if isPrime(sum) {
                    count += 1
                }
            }
        }
    }
    return count
    
}
