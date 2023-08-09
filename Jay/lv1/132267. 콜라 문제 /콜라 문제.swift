import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var now = n
    var total = 0
    
    while now >= a {
        let exchange = now / a * b
        total += exchange
        now = exchange + now % a
    }
    return total
}
