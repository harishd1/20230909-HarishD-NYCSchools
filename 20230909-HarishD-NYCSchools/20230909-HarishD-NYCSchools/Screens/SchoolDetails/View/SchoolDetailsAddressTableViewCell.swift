//
//  SchoolDetailsAddressTableViewCell.swift
//  20230909-HarishD-NYCSchools
//
//  Created by Harish Deshmukh on 9/8/23.
//

import UIKit
import MapKit

class SchoolDetailsAddressTableViewCell: UITableViewCell {

    @IBOutlet var hsAddressMapView: MKMapView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    func addHSAnnotaionWithCoordinates(_ hsCoordinates: CLLocationCoordinate2D){
        
        let highSchoolAnnotation = MKPointAnnotation()
        highSchoolAnnotation.coordinate = hsCoordinates
        self.hsAddressMapView.addAnnotation(highSchoolAnnotation)
        let span = MKCoordinateSpanMake(0.001, 0.001)
        let region = MKCoordinateRegion(center: highSchoolAnnotation.coordinate, span: span)
        let adjustRegion = self.hsAddressMapView.regionThatFits(region)
        self.hsAddressMapView.setRegion(adjustRegion, animated:true)
    }

}
