//
//  GetUtility.swift
//  20230909-HarishD-NYCSchools
//
//  Created by Harish Deshmukh on 9/8/23.
//

import Foundation
import CoreLocation
import MapKit

class GetUtility {
    
    /// This function will fetch the address without coodinates
    ///
    /// - Returns: Stirng, address of the high school
    static func getCompleteAddressWithoutCoordinate(_ schoolAddr: String?) -> String{
        if let schoolAddress = schoolAddr{
            let address = schoolAddress.components(separatedBy: "(")
            return address[0]
        }
        return ""
    }
    
    /// This function will fetch the coodinates for the selected High School location
    ///
    /// - Returns: CLLocationCoordinate2D, coodinate of High School location
    static func getCoodinateForSelectedHighSchool(_ schoolAddr: String?) -> CLLocationCoordinate2D?{
        if let schoolAddress = schoolAddr{
            let coordinateString = schoolAddress.slice(from: "(", to: ")")
            let coordinates = coordinateString?.components(separatedBy: ",")
            if let coordinateArray = coordinates{
                let latitude = (coordinateArray[0] as NSString).doubleValue
                let longitude = (coordinateArray[1] as NSString).doubleValue
                return CLLocationCoordinate2D(latitude: CLLocationDegrees(latitude), longitude: CLLocationDegrees(longitude))
            }
        }
        return nil
    }
    
    
    /// This functions is used to fetch JSON payload and assign parameter to the SchoolModel model
    ///
    /// - Parameter json: Dictionany with Schools Detail
    /// - Returns: High School Model type
    static func getHSInfoWithJSON(_ json: [String: Any]) -> SchoolModel?{
        if !json.isEmpty{
            let schoolModel = SchoolModel()
            if let dbnObject = json["dbn"] as? String{
                schoolModel.dbn = dbnObject
            }
            
            if let schoolNameOnject = json["school_name"] as? String{
                schoolModel.schoolName = schoolNameOnject
            }
            
            if let overviewParagraphObject = json["overview_paragraph"] as? String{
                schoolModel.overviewParagraph = overviewParagraphObject
            }
            if let schoolAddressObject = json["location"] as? String{
                schoolModel.schoolAddress = schoolAddressObject
            }
            if let schoolTelObject = json["phone_number"] as? String{
                schoolModel.schoolTelephoneNumber = schoolTelObject
            }
            
            if let websiteObject = json["website"] as? String{
                schoolModel.schoolWebsite = websiteObject
            }
            
            return schoolModel
        }
        return nil
    }
    
    /// Pass the JSON and configure to the model type
    ///
    /// - Parameter highSchoolsData: Data of Array composed with Dictionary
    /// - Returns: Array of Model class
    static func fetchNYCHsWithJsonData(_ highSchoolsData: Any) -> [SchoolModel]?{
        guard let highSchoolsDictionaryArray = highSchoolsData as? [[String: Any]] else{
            return nil
        }
        var highSchoolModelArray = [SchoolModel]()
        for highSchoolsDictionary in highSchoolsDictionaryArray{
            if let highSchoolModels = Utils.getHSInfoWithJSON(highSchoolsDictionary){
                highSchoolModelArray.append(highSchoolModels)
            }
        }
        return highSchoolModelArray
    }
    
}
