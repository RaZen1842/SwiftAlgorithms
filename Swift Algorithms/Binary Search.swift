import Foundation

class binarySearch {
    func BinarySearch(data: [Int], target: Int) -> Bool {
        let new_array = data
        
        if data.count == 0 {
            return false
        }
        
        if data.count == 1 {
            if target == data[0] {
                return true
            }
            else {
                return false
            }
        }
        
        let sortedArray = bubbleSort().BubbleSort(data: new_array)
        
        var medianIndex = sortedArray.count / 2
        var endIndex = sortedArray.count - 1
        var startIndex = 0
        
        var found = false
        
        print(sortedArray)
        
        while found == false {
            if target == sortedArray[medianIndex] {
                found = true
                
            }
            
            else if target < sortedArray[medianIndex] {
                endIndex = medianIndex - 1
                print(endIndex)
                
            }
            
            else if target > sortedArray[medianIndex] {
                startIndex = medianIndex + 1
                print(startIndex)
                
            }
            
            if startIndex > data.count - 1 {
                return false
            }
            
            if startIndex >= endIndex {
                return false
            }
            
            
            
            medianIndex = (startIndex + endIndex) / 2
        }
        
        return found
        
    }
    
}
