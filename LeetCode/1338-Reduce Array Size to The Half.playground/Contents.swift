

func minSetSize(_ arr: [Int]) -> Int {
    guard arr.count > 0 else { return 0 }
    guard Set(arr).count > 1 else { return 1 }
    
    let maxSize = arr.count / 2
    let dict = Dictionary(grouping: arr, by: { $0 }).mapValues({ $0.count })
    
//    var dict: [Int: Int] = [:]
//    for num in arr {
//        if let count = dict[num] {
//            dict[num] = count + 1
//        } else {
//            dict[num] = 1
//        }
//    }
    
    let sortedKeys = dict.sorted(by: { $0.value > $1.value }).map({ $0.key })
    var currentSize: Int = 0
    var answer: Int = 0
    
    for key in sortedKeys {
        let size = dict[key]!
        currentSize += size
        answer+=1
        if currentSize >= maxSize {
            break
        }
    }

    return answer
}

minSetSize([1000,1000,3,7]) // 1

minSetSize([3,3,3,3,5,5,5,2,2,7]) // 2

minSetSize([1,2,3,4,5,6,7,8,9,10]) // 5

minSetSize([77,54,30,18,87,45,72,69,100,52,78,56,5,23,3,64,75,35,61,54,53,5,13,49,47,10,30,43,22,94,6,10,51,76,4,6,27,60,74,29,16,8,25,60,71,18,47,27,10,60,43,6,50,75,54,69,37,80,24,37,90,58,32,32,7,80,4,50,96,1,69,80,18,58,73,74,8,90,35,68,68,25,51,17,87,20,29,75,31,5,52,77,38,59,92,68,61,61,97,11,31,5,5,8,17,86,49,95,2,2,15,48,10,15,37,90,71,39,9,80,73,43,7,25,83,41,100,94,98,70,33,94,11,68,93,75,14,27,43,25,48,78,51,85,55,42,97,80,53,33,95,56,81,25,32,75,4,59,46,25,58,94,65,24,26,58,94,6]) // 23
