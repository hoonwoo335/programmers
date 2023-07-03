import Foundation

func solution(_ numbers:[Int]) -> Int {
    var result = 0
        
    Array(0...9).forEach {
        if numbers.contains($0) == false {
            result += $0
        }
    }

    return result
}