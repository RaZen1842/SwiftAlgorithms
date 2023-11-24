import Foundation


class Algorithm {
    func linearSearch(data: [Int], item: Int) -> Bool {
        
        var found = false
        if data.count == 0 {
            return false
        }
        for i in 0..<data.count {
            if data[i] == item {
                found = true
                return true
            }
        }
        if found == false {
            return false
        }
    }
}
