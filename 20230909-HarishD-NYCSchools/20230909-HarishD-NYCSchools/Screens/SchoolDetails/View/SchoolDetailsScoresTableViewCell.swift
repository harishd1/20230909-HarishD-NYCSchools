//
//  SchoolDetailsScoresTableViewCell.swift
//  20230909-HarishD-NYCSchools
//
//  Created by Harish Deshmukh on 9/8/23.
//

import Foundation
import UIKit

class SchoolDetailsScoresTableViewCell: UITableViewCell {

    @IBOutlet var hsNameLbl: UILabel!
    @IBOutlet var satReadingAvgScoreLbl: UILabel!
    @IBOutlet var satMathAvgScoreLbl: UILabel!
    @IBOutlet var satWritingAvgScoreLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
