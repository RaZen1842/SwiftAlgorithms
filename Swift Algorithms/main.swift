import Foundation

//var Number_Array = [Int]()
//
//func array_generator(array: inout [Int]) {
//    for _ in 1...10 {
//        array.append(Int.random(in: 1...100))
//    }
//}
//
//array_generator(array: &Number_Array)
//
//
//print(Number_Array)
//
//
//insertion_sort(Number_Array: &Number_Array)

var data = [25,78,12,34,54,22,83,45,87]

func QuickSort(data: [Int]) -> [Int] {
    let pivot = data[0]
    var left = [Int]()
    var right = [Int]()
    if data.count > 1 {
        for i in 1..<data.count {
            if data[i] < pivot {
                left.append(data[i])
            }
            else {
                right.append(data[i])
            }
        }
        
    } else {
        left = QuickSort(data: left)
        right = QuickSort(data: right)
        }
    
    var MergeArray = [Int]()
    MergeArray.append(contentsOf: left)
    MergeArray.append(pivot)
    MergeArray.append(contentsOf: right)
    
    return MergeArray
}

let SortedArray = QuickSort(data: data)
print(SortedArray)
