import Foundation

class binarySearch {
    func BinarySearch(data: [Int], target: Int) -> Bool {
        var new_array = data
        
        if data.count == 0 {
            return false
        }
        
        let passThruClass = bubbleSort()
        var sortedArray = passThruClass.BubbleSort(data: new_array)
        
        var medianIndex = data.count / 2
        var startIndex = 0
        var endIndex = data.count - 1
        
        var found = false
        
        while found == false {
            
            if data[medianIndex] == target {
                return true
            }
            
            if target < data[medianIndex] {
                endIndex = medianIndex
            }
            
        }
    }
}
