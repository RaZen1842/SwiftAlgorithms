import Foundation

var Number_Array = [Int]()

func array_generator(array: inout [Int]) {
    for _ in 1...10 {
        array.append(Int.random(in: 1...100))
    }
}

array_generator(array: &Number_Array)


print(Number_Array)


insertion_sort(Number_Array: &Number_Array)
