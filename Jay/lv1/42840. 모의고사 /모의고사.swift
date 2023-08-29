import Foundation

func solution(_ answers:[Int]) -> [Int] {
    let patterns = [
        [1, 2, 3, 4, 5],
        [2, 1, 2, 3, 2, 4, 2, 5],
        [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    ]

    var scores = [0, 0, 0]

    for (index, answer) in answers.enumerated() {
        for (patternIndex, pattern) in patterns.enumerated() {
            if pattern[index % pattern.count] == answer {
                scores[patternIndex] += 1
            }
        }
    }
    let maxScore = scores.max()
    var result: [Int] = []
    for (index, score) in scores.enumerated() {
        if score == maxScore {
        result.append(index + 1)
        }
    }
    return result
}
