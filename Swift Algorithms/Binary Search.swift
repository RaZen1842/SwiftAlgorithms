import Foundation

class binarySearch {
    func BinarySearch(data: [Int], target: Int) -> Bool {
        let new_array = data
        
        if data.count == 0 {
            return false
        }
        
        var sortedArray = bubbleSort().BubbleSort(data: new_array)
        
        var medianIndex = sortedArray.count / 2
        var startIndex = 0
        var endIndex = sortedArray.count - 1
        
        var found: Bool = false
        
        while found == false {
            
            if sortedArray[medianIndex] == target {
                found = true
            }
            
            if target < sortedArray[medianIndex] {
                endIndex = medianIndex
            }
            
            if target > sortedArray[medianIndex] {
                startIndex = medianIndex
            }
            
            if startIndex == medianIndex || endIndex == medianIndex {
                return false
            }
            
            medianIndex = (endIndex + startIndex) / 2
            
        }
        
        return found
    }
}
