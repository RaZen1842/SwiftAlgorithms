import XCTest

final class SwiftAlgorithmsTestCases: XCTestCase {
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
    
    func testLinearSearchPerformanceOnSortedArrayReturnsTrue() {
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
}
