import Foundation

func solution(_ survey:[String], _ choices:[Int]) -> String {
    var result: [String] = Array(repeating: "", count: 4)
        //let choiceNum: [Int] = [1,2,3,4,5,6,7]
        let choicePoint: [Int] = [3,2,1,0,1,2,3]
        let signs: [[String]] = [["R","T"],["C","F"],["J","M"],["A","N"]]
        var totalPoint: [[Int]] = Array(repeating: Array(repeating: 0, count: 2), count: 4)
        
        func checkChoicePoint(_ fstIdx: Int, _ secIdx: [Int], _ choice: Int) {
            if choice < 4 {
                totalPoint[fstIdx][secIdx[0]] += choicePoint[choice-1]
            }
            else if choice > 4 {
                totalPoint[fstIdx][secIdx[1]] += choicePoint[choice-1]
            }
            
            // result caculate
            if totalPoint[fstIdx][0] > totalPoint[fstIdx][1] || totalPoint[fstIdx][0] == totalPoint[fstIdx][1] {
                result[fstIdx] = signs[fstIdx][0]
            }
            else {
                result[fstIdx] = signs[fstIdx][1]
            }
        }
        
        for i in 0..<survey.count {
            let obj = survey[i]
            let choice = choices[i]
            
            if obj == "RT" || obj == "TR" { // 1
                if obj == "RT" {
                    checkChoicePoint(0, [0,1], choice)
                }
                else {
                    checkChoicePoint(0, [1,0], choice)
                }
            }
            else if obj == "CF" || obj == "FC" { // 2
                if obj == "CF" {
                    checkChoicePoint(1, [0,1], choice)
                }
                else {
                    checkChoicePoint(1, [1,0], choice)
                }
            }
            else if obj == "JM" || obj == "MJ" { // 3
                if obj == "JM" {
                    checkChoicePoint(2, [0,1], choice)
                }
                else {
                    checkChoicePoint(2, [1,0], choice)
                }
            }
            else if obj == "AN" || obj == "NA" { // 4
                if obj == "AN" {
                    checkChoicePoint(3, [0,1], choice)
                }
                else {
                    checkChoicePoint(3, [1,0], choice)
                }
            }
        }
        
        //print("totalPoint - ",totalPoint)
        //print("result - ",result)
        
        for i in 0..<result.count {
            if result[i] == "" {
                result[i] = signs[i][0]
            }
        }
        
        return result.joined(separator: "")
}