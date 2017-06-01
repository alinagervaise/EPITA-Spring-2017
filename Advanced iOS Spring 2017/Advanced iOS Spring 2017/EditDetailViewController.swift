//
//  EditDetailViewController.swift
//  Advanced iOS Spring 2017
//
//  Created by Guest User on 01/06/17.
//  Copyright © 2017 ___AdvancediOS___. All rights reserved.
//

import UIKit
import os.log

class EditDetailViewController: UIViewController {
    
    var weather : Weather?
   
    @IBAction func CancelAction(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func SaveAction(_ sender: Any) {
    }
    @IBOutlet weak var SaveOutlet: UIBarButtonItem!
    @IBOutlet weak var TemperatureText: UITextField!
    @IBOutlet weak var TemperatureLabel: UILabel!
    @IBOutlet weak var CityNameText: UITextField!
    @IBOutlet weak var CityLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        guard let button = sender as?UIBarButtonItem , button == SaveOutlet else{
            os_log("Savebutton", log:OSLog.default,type:.debug)
            return
        }
        let city = CityNameText.text
        let temperature = Int(TemperatureText.text!)
        
        weather = Weather(city:city!, temperature:temperature!, picture: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
