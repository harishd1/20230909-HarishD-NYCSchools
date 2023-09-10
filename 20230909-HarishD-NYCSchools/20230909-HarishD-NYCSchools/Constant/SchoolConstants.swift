//
//  SchoolConstants.swift
//  20230909-HarishD-NYCSchools
//
//  Created by Harish Deshmukh on 9/8/23.
//

import Foundation

struct SchoolConstants {
    static let highSchoolsURL = "https://data.cityofnewyork.us/resource/s3k6-pzi2.json"
    static let schoolWithSATScoreURL = "https://data.cityofnewyork.us/resource/f9bf-2cp4.json"
    static let hsCellIdentifier = "SchoolListTableViewCell"
    static let HSWithSATScoreSegue = "HSWithSATScoreSegue"
}

struct DetailConstants {
    struct Cells {
        static let schoolWithSATScoreCellIdentifier =  "SchoolDetailsScoresTableViewCell"
        static let schoolOverviewCellIdentifier = "SchoolDetailsOverviewTableViewCell"
        static let schoolWithAddressCellIdentifier = "SchoolDetailsAddressTableViewCell"
        static let schoolWithContactCellIdentifier = "SchoolDetailsContactTableViewCell"
    }

    
    static let noSATScoreInfomationText = "There is no SAT score information for this high school"
    static let averageSATReadingScore = "SAT Average Critical Reading Score:  "
    static let averageSATMathScore = "SAT Average Math Score:   "
    static let averageSATWritingScore = "SAT Average Writing Score:   "
}
