import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var w = 0
    var h = 0
    var tmpSizes = sizes.map {
        $0.sorted(by: {$0 > $1})
    }
    
    for size in tmpSizes {
        if w < size[0] {
            w = size[0]
        }
        if h < size[1] {
            h = size[1]
        }
    }

    return w * h
}