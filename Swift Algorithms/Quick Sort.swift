import Foundation

//func QuickSort(data: [Int]) -> [Int] {
//    let pivot = data[0]
//    var left = [Int]()
//    var right = [Int]()
//    if data.count > 1 {
//        for i in 1..<data.count {
//            if data[i] < pivot {
//                left.append(data[i])
//            }
//            else {
//                right.append(data[i])
//            }
//        }
//
//    } else {
//        left = QuickSort(data: left)
//        right = QuickSort(data: right)
//        }
//
//    var MergeArray = [Int]()
//    MergeArray.append(contentsOf: left)
//    MergeArray.append(pivot)
//    MergeArray.append(contentsOf: right)
//
//    return MergeArray
//}
//
//let SortedArray = QuickSort(data: data)
//print(SortedArray)
