//
//  WeatherTableViewCell.swift
//  Advanced iOS Spring 2017
//
//  Created by Guest User on 24/05/17.
//  Copyright © 2017 ___AdvancediOS___. All rights reserved.
//

import UIKit

class WeatherTableViewCell: UITableViewCell {

    @IBOutlet weak var WeatherImageView: UIImageView!
    
    @IBOutlet weak var TemperatureLabel: UILabel!
    @IBOutlet weak var CityNameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
