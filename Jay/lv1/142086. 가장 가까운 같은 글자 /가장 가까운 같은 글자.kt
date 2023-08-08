class Solution {
    fun solution(s: String): IntArray {
        val dic = mutableMapOf<Char, Int>()
        val array = mutableListOf<Int>()
    
        s.forEachIndexed { index, char ->
            val lastIndex = dic[char]
            if (lastIndex != null) {
                array.add(index - lastIndex)
            } else {
                array.add(-1)
            }
            dic[char] = index
    }
    return array.toIntArray()
    }
}
