import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    let sortedScores = score.sorted(by: >)
    var totalProfit = 0
    var index = 0
    
    while index + m <= sortedScores.count {
        let subset = Array(sortedScores[index..<index+m])
        if let minScore = subset.min() {
            totalProfit += minScore * m
        }
        index += m
    }
    return totalProfit
}
