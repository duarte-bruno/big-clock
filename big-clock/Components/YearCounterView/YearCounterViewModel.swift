import Foundation

class YearCounterViewModel {
    
    // MARK: - Parameters
    
    // Public
    
    var mainYearText: String {
       return "\(Int(yearPastPercentage))% of the year has passed and you only have \(totalDaysLeftYearCount) days or \(totalWeeksLeftYearCount) weeks or \(monthsDifferenceTo) months left until the year is over."
    }
    
    var yearPastPercentage: Float {
        let totalYearCount = Float(startAndEndOfYear.start.daysDifferenceTo(startAndEndOfYear.end))
        let totalTodayCount = Float(startAndEndOfYear.start.daysDifferenceTo(Date()))
        return totalTodayCount * 100 / totalYearCount
    }
    
    // Private
    
    private var startAndEndOfYear: (start: Date, end: Date) = {
        var components = Calendar.current.dateComponents([.year], from: Date())
        guard let startDateOfYear = Calendar.current.date(from: components) else { return (Date(), Date()) }
        components.year = 1
        components.day = -1
        guard let lastDateOfYear = Calendar.current.date(byAdding: components, to: startDateOfYear) else { return (Date(), Date()) }
        return (startDateOfYear, lastDateOfYear)
    }()
    
    private var totalDaysLeftYearCount: Int {
        return Date().daysDifferenceTo(startAndEndOfYear.end)
    }
    
    private var totalWeeksLeftYearCount: Int {
        return Date().weeksDifferenceTo(startAndEndOfYear.end)
    }
    
    private var monthsDifferenceTo: Int {
        return Date().monthsDifferenceTo(startAndEndOfYear.end)
    }
}
