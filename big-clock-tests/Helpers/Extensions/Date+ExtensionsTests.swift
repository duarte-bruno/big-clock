import XCTest
@testable import big_clock

final class Date_ExtensionsTests: XCTestCase {

    // MARK: - daysDifferenceTo
    
    func test_daysDifferenceTo_withingTheSameDay_shouldBe1() throws {
        let initialDate = Date(ddMMyyyy: "01/01/2024")!
        
        let daysDiff = initialDate.daysDifferenceTo(Date(ddMMyyyy: "01/01/2024")!)
        
        XCTAssertEqual(daysDiff, 1)
    }
    
    func test_daysDifferenceTo_withingAYear_shouldBe365() throws {
        let initialDate = Date(ddMMyyyy: "01/01/2023")!
        
        let daysDiff = initialDate.daysDifferenceTo(Date(ddMMyyyy: "31/12/2023")!)
        
        XCTAssertEqual(daysDiff, 365)
    }
    
    func test_daysDifferenceTo_withingALeapYear_shouldBe366() throws {
        let initialDate = Date(ddMMyyyy: "01/01/2024")!
        
        let daysDiff = initialDate.daysDifferenceTo(Date(ddMMyyyy: "31/12/2024")!)
        
        XCTAssertEqual(daysDiff, 366)
    }
    
    func test_daysDifferenceTo_withingPastDate_shouldBePositive() throws {
        let initialDate = Date(ddMMyyyy: "01/01/2024")!
        
        let daysDiff = initialDate.daysDifferenceTo(Date(ddMMyyyy: "31/12/2023")!)
        
        XCTAssertEqual(daysDiff, 2)
    }
    
    // MARK: - weeksDifferenceTo
    
    func test_weeksDifferenceTo_withingTheSameWeek_shouldBe0() throws {
        let initialDate = Date(ddMMyyyy: "01/01/2024")!
        
        let weeksDiff = initialDate.weeksDifferenceTo(Date(ddMMyyyy: "04/01/2024")!)
        
        XCTAssertEqual(weeksDiff, 0)
    }
    
    func test_weeksDifferenceTo_withingAYear_shouldBe52() throws {
        let initialDate = Date(ddMMyyyy: "01/01/2024")!
        
        let weeksDiff = initialDate.weeksDifferenceTo(Date(ddMMyyyy: "31/12/2024")!)
        
        XCTAssertEqual(weeksDiff, 52)
    }
    
    func test_weeksDifferenceTo_withingPastDate_shouldBePositive() throws {
        let initialDate = Date(ddMMyyyy: "01/01/2024")!
        
        let weeksDiff = initialDate.weeksDifferenceTo(Date(ddMMyyyy: "01/01/2023")!)
        
        XCTAssertEqual(weeksDiff, 52)
    }
    
    // MARK: - monthsDifferenceTo
    
    func test_monthsDifferenceTo_withingTheSameMonth_shouldBe0() throws {
        let initialDate = Date(ddMMyyyy: "01/01/2024")!
        
        let monthsDiff = initialDate.monthsDifferenceTo(Date(ddMMyyyy: "04/01/2024")!)
        
        XCTAssertEqual(monthsDiff, 0)
    }
    
    func test_monthsDifferenceTo_withingAYear_shouldBe11() throws {
        let initialDate = Date(ddMMyyyy: "01/01/2024")!
        
        let monthsDiff = initialDate.monthsDifferenceTo(Date(ddMMyyyy: "31/12/2024")!)
        
        XCTAssertEqual(monthsDiff, 11)
    }
    
    func test_monthsDifferenceTo_withingPastDate_shouldBePositive() throws {
        let initialDate = Date(ddMMyyyy: "01/01/2024")!
        
        let monthsDiff = initialDate.monthsDifferenceTo(Date(ddMMyyyy: "01/01/2023")!)
        
        XCTAssertEqual(monthsDiff, 12)
    }
    
    // MARK: - yearsDifferenceTo
    
    func test_yearsDifferenceTo_withingTheSameYear_shouldBe0() throws {
        let initialDate = Date(ddMMyyyy: "01/01/2024")!
        
        let yearsDiff = initialDate.yearsDifferenceTo(Date(ddMMyyyy: "04/01/2024")!)
        
        XCTAssertEqual(yearsDiff, 0)
    }
    
    func test_yearsDifferenceTo_withingAYear_shouldBe1() throws {
        let initialDate = Date(ddMMyyyy: "01/01/2024")!
        
        let yearsDiff = initialDate.yearsDifferenceTo(Date(ddMMyyyy: "01/01/2025")!)
        
        XCTAssertEqual(yearsDiff, 1)
    }
    
    func test_yearsDifferenceTo_withingPastDate_shouldBePositive() throws {
        let initialDate = Date(ddMMyyyy: "01/01/2024")!
        
        let yearsDiff = initialDate.yearsDifferenceTo(Date(ddMMyyyy: "01/01/2023")!)
        
        XCTAssertEqual(yearsDiff, 1)
    }
}
