//
//  DateExtension.swift
//  AthleteApp
//

import Foundation

/// To Convert string into date format
///
/// - Parameter value: Accept Date as String
/// - Returns: nil
extension Date {
    init(_ dateString:String) {
        let dateStringFormatter = DateFormatter()
        dateStringFormatter.dateFormat = "MM-dd-yyyy hh:mm a"
        dateStringFormatter.locale = NSLocale(localeIdentifier: "en_US_POSIX") as Locale
        let date = dateStringFormatter.date(from: dateString)!
        self.init(timeInterval:0, since:date)
    }
}

