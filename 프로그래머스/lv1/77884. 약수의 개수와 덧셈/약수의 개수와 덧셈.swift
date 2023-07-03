import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    //약수의 갯수 구하기
    func getFactorCount(_ n:Int) -> Int {
        var counter = 0
        (1...n).forEach {
            if n % $0 == 0 {
                counter += 1
            }
        }
        return counter
    }

    return Array(left...right).map {
        getFactorCount($0) % 2 == 0 ? $0 : -$0
    }.reduce(0, +)
}