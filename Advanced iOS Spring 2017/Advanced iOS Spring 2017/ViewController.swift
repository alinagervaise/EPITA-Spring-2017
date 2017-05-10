//
//  ViewController.swift
//  Advanced iOS Spring 2017
//
//  Created by Suiz Uzcategui on 19/04/2017.
//  Copyright © 2017 ___AdvancediOS___. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // Add first comment for the first class  Gervaise

    @IBOutlet weak var cityLabel: UILabel!
    
    @IBOutlet weak var temperatureLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let weather = WeatherFetch()
        weather.getWeather(city: "paris")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

