import Foundation

class LifeCounterViewModel {
    
    // MARK: - Parameters
    
    // Public
    
    var mainText: String {
       return "\(String(format: "%.2f", yearPastPercentage))% of your life expectancy has already passed and you still have \(totalYearsLeftCount) years left until you reach your 80s"
    }
    
    var yearPastPercentage: Float {
        let totalYearCount = Float(startAndEndOfLife.birth.daysDifferenceTo(startAndEndOfLife.expectancy))
        let totalTodayCount = Float(startAndEndOfLife.birth.daysDifferenceTo(Date()))
        return totalTodayCount * 100 / totalYearCount
    }
    
    // Private
    
    private var startAndEndOfLife: (birth: Date, expectancy: Date) = {
        guard let birth = Date(ddMMyyyy: "02/08/1993"), let expectancy = Date(ddMMyyyy: "02/08/2073") else { return (Date(), Date()) }
        return (birth, expectancy)
    }()
    
    private var totalYearsLeftCount: Int {
        return Date().yearsDifferenceTo(startAndEndOfLife.expectancy)
    }
}
