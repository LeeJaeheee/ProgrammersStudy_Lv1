class Solution {
    fun solution(food: IntArray): String {
        val leftArray: MutableList<String> = mutableListOf()
        val rightArray: MutableList<String>
    
        for (i in 1 until food.size) {
            var amount = food[i]
            if (amount % 2 != 0) {
                amount -= 1
            }
        
            if (amount <= 1) {
                continue
            }
        
            val foodType = i.toString()
            for (j in 0 until (amount / 2)) {
                leftArray.add(foodType)
            }
        }
    
        rightArray = leftArray.reversed().toMutableList()
        val fullArray = leftArray.toMutableList()
        fullArray.add("0")
        fullArray.addAll(rightArray)
    
        return fullArray.joinToString(separator = "")
    }
}
