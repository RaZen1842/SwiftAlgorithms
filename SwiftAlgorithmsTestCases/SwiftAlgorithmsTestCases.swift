import XCTest

final class LinearSearchTests: XCTestCase {
// TEST DRIVEN DEVELOPMENT (TDD)
// the tests are driving what we develop
    
// RED -> GREEN -> REFACTOR
    
// Write test cases that fail (i.e. red)
    
// Write minimal code to fix those failures i.e green
// Refactor code/test case to be nice
    func testLinearSearchWithSortedArrayAndSearchHitReturnsTrue() {
        
        //ARRANGE
        let sut = Algorithm()
        let searchData = [1,2,3,4,5,6]
        let searchItem = 4
        let expected = true
        
        //ACT
        let actual = sut.linearSearch(data: searchData, item: searchItem)
        
        //ASSERT
        XCTAssertEqual(actual, expected)
    }
    
    func testLinearSearchWithEmptyArrayReturnsFalse() {
        //ARRANGE
        let sut = Algorithm()
        let searchData = [Int]()
        let searchItem = 4
        let expected = false
        
        //ACT
        let actual = sut.linearSearch(data: searchData, item: searchItem)
        
        //ASSERT
        XCTAssertEqual(actual, expected)
    }
    
    func testLinearSearchPerformanceOnUnsortedArrayReturnsTrue() {
        //ARRANGE
        let sut = Algorithm()
        let searchData = [2,1,3,5,4,6]
        let searchItem = 4
        let expected = true
        
        //ACT
        let actual = sut.linearSearch(data: searchData, item: searchItem)
        
        //ASSERT
        XCTAssertEqual(actual, expected)
    }
    
}

//BUBBLE SORT TESTS

final class BubbleSortTests: XCTestCase {
    func testBubbleSortWithASortedArrayMeaningTestPass() {
        //Arrange
        let sut = bubbleSort()
        let array = [1,2,3,4,5,6]
        let expected = [1,2,3,4,5,6]
        
        //Act
        let actual = sut.BubbleSort(data: array)
        
        //Assert
        XCTAssertEqual(actual, expected)
    }
    
    func testBubbleSortWithAnUnsortedArrayMeaningTestPass() {
        //Arrange
        let sut = bubbleSort()
        let array = [2,3,1,4,6,5]
        let expected = [1,2,3,4,5,6]
        
        //Act
        let actual = sut.BubbleSort(data: array)
        
        //Assert
        XCTAssertEqual(actual, expected)
    }
    
    func testBubbleSortWithAnEmptyArray() {
        //Arrange
        let sut = bubbleSort()
        let array = [Int]()
        let expected = [-1]
        
        //Act
        let actual = sut.BubbleSort(data: array)
        
        //Assert
        XCTAssertEqual(actual, expected)
    }
}

//BINARY SEARCH TESTS

final class BinarySearchTests: XCTestCase {
    func testBinSearchWithEmptyArray() {
        //Arrange
        let sut = binarySearch()
        let array = [Int]()
        let expected = false
        let target = 8
        
        //Act
        let actual = sut.BinarySearch(data: array, target: target)
        
        //Assert
        XCTAssertEqual(actual, expected)
    }
    
    func testBinSearchWithArrayLen1ReturnsTrue() {
        //Arrange
        let sut = binarySearch()
        let array = [5]
        let expected = true
        let target = 5
        
        //Act
        let actual = sut.BinarySearch(data: array, target: target)
        
        //Assert
        XCTAssertEqual(actual, expected)
    }
    
    func testBinSearchWithArrayLen1ReturnsFalse() {
        //Arrange
        let sut = binarySearch()
        let array = [5]
        let expected = false
        let target = 6
        
        //Act
        let actual = sut.BinarySearch(data: array, target: target)
        
        //Assert
        XCTAssertEqual(actual, expected)
    }
    
    func testBinSearchWithUnsortedArrayReturnsTrue() {
        let sut = binarySearch()
        let array = [2,1,3,5,4,1,6,6,12,554,23,5,5,2]
        let expected = true
        let target = 6
        
        let actual = sut.BinarySearch(data: array, target: target)
        
        XCTAssertEqual(actual, expected)
    }
    
    func testBinSearchWithSortedArrayReturnsTrue() {
        let sut = binarySearch()
        let array = [1,2,3,4,5,6,7]
        let expected = true
        let target = 6
        
        let actual = sut.BinarySearch(data: array, target: target)
        
        XCTAssertEqual(actual, expected)
    }
    
    func testBinSearchWithArrayTagetNotFoundReturnsFalse() {
        let sut = binarySearch()
        let array = [2,1,3,5,4,1,6,6,12,554,23,5,5,2]
        let expected = false
        let target = 10
    
        let actual = sut.BinarySearch(data: array, target: target)
        
        XCTAssertEqual(actual, expected)
    }
}
