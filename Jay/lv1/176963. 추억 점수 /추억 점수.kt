class Solution {
    fun solution(name: Array<String>, yearning: IntArray, photo: Array<Array<String>>): IntArray {
    val dic = mutableMapOf<String, Int>()
    val array = mutableListOf<Int>()
    for (i in name.indices) {
        dic[name[i]] = yearning[i]
    }
    for (i in photo) {
        var result = 0
        for (j in i) {
            val value = dic[j]
            if (value != null) {
                result += value
            }
        }
        array.add(result)
    }
    return array.toIntArray()
    }
}
