func solution(_ a: Int, _ b: Int) -> String {
    let daysOfMonth = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    let daysOfWeek = ["FRI", "SAT", "SUN", "MON", "TUE", "WED", "THU"]

    var totalDays = b - 1
    for i in 0..<a-1 {
        totalDays += daysOfMonth[i]
    }
    
    let index = totalDays % 7
    return daysOfWeek[index]
}
