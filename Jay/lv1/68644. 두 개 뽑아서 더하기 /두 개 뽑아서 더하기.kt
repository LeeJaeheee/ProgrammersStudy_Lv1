class Solution {
    fun solution(numbers: IntArray): IntArray {
    val arr: MutableSet<Int> = mutableSetOf()
    for (i in 0 until numbers.size) {
        for (j in 0 until numbers.size) {
            if (i != j) {
                arr.add(numbers[i] + numbers[j])
            }
        }
    }
    return arr.toIntArray().sortedArray()
    }
}
