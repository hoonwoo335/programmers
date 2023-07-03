import Foundation

func solution(_ s:String) -> Int {
    let words = [["zero","0"],["one","1"],["two","2"],["three","3"],["four","4"],["five","5"],["six","6"],["seven","7"],["eight","8"],["nine","9"]]
    var num =  s

    for word in words {
        num = num.replacingOccurrences(of: word[0], with: word[1])
    }

    return Int(num)!
}