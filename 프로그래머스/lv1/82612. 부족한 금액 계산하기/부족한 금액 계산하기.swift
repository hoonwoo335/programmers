import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    let total = Array(1...count).map { price * $0 }.reduce(0,+)
    return Int64(money >= total ? 0 : total - money)
}