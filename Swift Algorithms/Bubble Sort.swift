import Foundation

class bubbleSort {
    func BubbleSort(data: [Int]) -> [Int] {
        var newArray = data
        var sorted = false
        
        if newArray.count == 0 {
            return [-1]
        }
        
        while sorted == false {
            var count = 0
            for i in 0...newArray.count-2 {
                let temp = newArray[i]
                if newArray[i] > newArray[i+1] {
                    newArray[i] = newArray[i+1]
                    newArray[i+1] = temp
                    count += 1
                }
            }
                
            if count == 0 {
                sorted = true
            }
        }
        return newArray
    }
}
