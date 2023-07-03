import Foundation

func solution(_ number:[Int]) -> Int {
    var s1 = 0
    var s2 = 1
    var thrMsktrs = 0
    
    while(s1 < number.count-2) {
        for i in s2+1..<number.count {
            if number[s1]+number[s2]+number[i] == 0 {
                thrMsktrs += 1
            }
        }
        s2 += 1

        if s2 >= number.count-1 {
            s1 += 1
            s2 = s1+1
        }
    }

    return thrMsktrs
}