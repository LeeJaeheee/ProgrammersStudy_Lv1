func solution(_ n: Int) -> Int {
    func isPrime(_ num: Int) -> Bool {
        if num < 2 {
            return false
        }
        let limit = Int(Double(num).squareRoot())
        if limit < 2 { return num > 1 }
        for i in 2...limit {
            if num % i == 0 {
                return false
            }
        }
        return true
    }
    
    var result = 0
    for i in 2...n {
        if isPrime(i) {
            result += 1
        }
    }
    return result
}
