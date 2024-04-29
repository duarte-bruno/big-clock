import Foundation

extension Date {
    
    // MARK: - Init
    
    /// Initialize a date with this format: "dd/MM/yyyy"
    /// - Parameter ddMMyyyy: Date string
    init?(ddMMyyyy: String) {
        let formatter = DateFormatter("dd/MM/yyyy")
        guard let date = formatter.date(from: ddMMyyyy) else {
            return nil
        }
        self = date
    }

    // MARK: - Methods
    
    /// Count the difference between the current date and another one (including current and end date)
    /// - Parameter date: the other date to compare
    /// - Returns: the count result
    func daysDifferenceTo(_ date: Date) -> Int {
        if self == date { return 1 }
        var daysDiff = Calendar.current.dateComponents([.day], from: self, to: date).day ?? 0
        if daysDiff < 0 {
            daysDiff = daysDiff * -1
        }
        return daysDiff + 1 // (+1) to count the end date
    }
    
    /// Count the difference between the current date and another one
    /// - Parameter date: the other date to compare
    /// - Returns: the count result (return 0 if it is the same week)
    func weeksDifferenceTo(_ date: Date) -> Int {
        var weeksDiff = Calendar.current.dateComponents([.weekdayOrdinal], from: self, to: date).weekdayOrdinal ?? 0
        if weeksDiff < 0 {
            weeksDiff = weeksDiff * -1
        }
        return weeksDiff
    }
    
    /// Count the difference between the current date and another one
    /// - Parameter date: the other date to compare
    /// - Returns: the count result (return 0 if it is the same month)
    func monthsDifferenceTo(_ date: Date) -> Int {
        var monthsDiff = Calendar.current.dateComponents([.month], from: self, to: date).month ?? 0
        if monthsDiff < 0 {
            monthsDiff = monthsDiff * -1
        }
        return monthsDiff
    }
    
    /// Count the difference between the current date and another one
    /// - Parameter date: the other date to compare
    /// - Returns: the count result (return 0 if it is the same month)
    func yearsDifferenceTo(_ date: Date) -> Int {
        var yearsDiff = Calendar.current.dateComponents([.year], from: self, to: date).year ?? 0
        if yearsDiff < 0 {
            yearsDiff = yearsDiff * -1
        }
        return yearsDiff
    }
}

extension DateFormatter {

    convenience init(_ format: String) {
        self.init()
        self.dateFormat = format
    }
}
