//
//  weather.swift
//  Advanced iOS Spring 2017
//
//  Created by Guest User on 17/05/17.
//  Copyright © 2017 ___AdvancediOS___. All rights reserved.
//

import Foundation
import UIKit


class Weather{
    var city : String
    var temperature : Int
    var picture : UIImage?
    //let make value constant  
    // ? make the variable optional the variable can be null
    
    init?(city:String, temperature:Int, picture:UIImage?){
        self.city = city
        self.temperature =  temperature
        self.picture = picture
        if (city.isEmpty){
            return nil
        }
    }
}
