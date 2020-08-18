//
//  AthleteModel.swift
//  AthleteApp
//

import Foundation

//MARK:- Athlete Model
struct Athlete {
    var firstName: String
    var lastName: String
    var position: String
    var time: Date
    var image: String
    var notes: String
    
   /// Sorted array in acending order in terms of positions (Alphabetically)
   ///
   /// - Parameter value: nil
   /// - Returns: Athlete Sorted array
    static func getSortedArray() -> [Athlete] {
        return athleteData.sorted { $0.position.lowercased() < $1.position.lowercased() }
    }
    
    
    /// Sorted array in decending order in terms of Date
    ///
    /// - Parameter value: nil
    /// - Returns: Athlete Sorted array
    static func getSortedDateArray() -> [Athlete] {
        return athleteData.sorted { $0.time < $1.time }
    }
    
    
    /// Sorted array in decending order in terms of Date and lastname
    ///
    /// - Parameter value: nil
    /// - Returns: Athlete Sorted array
    static func getFilterbyLastname() -> [Athlete] {
        return athleteData.sorted { $0.time > $1.time }.filter ({$0.lastName.first?.lowercased() == "j"})
    }
    
    
}








