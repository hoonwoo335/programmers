import Foundation

func solution(_ n:Int) -> Int {
    var x = 1
    var minimum = 0

    while (x < n) {
        if n % x == 1 {
            if minimum == 0 || x < minimum {
                minimum = x
            }
        }
        x += 1
    }

    return minimum
}