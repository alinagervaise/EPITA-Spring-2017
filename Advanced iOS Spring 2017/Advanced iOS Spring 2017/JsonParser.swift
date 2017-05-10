//
//  JsonParser.swift
//  Advanced iOS Spring 2017
//
//  Created by Guest User on 10/05/17.
//  Copyright © 2017 ___AdvancediOS___. All rights reserved.
//

import Foundation



class JsonParser{
    
    func getCity(city: Data) {
        
        do {
            let data = city
            let json = try JSONSerialization.jsonObject(with: data) as? [String: Any]
            let cityName = json?["name"] as? [[String: Any]]
            print("CITYNAME parsing JSON: \(cityName)")
        } catch {
            print("Error parsing JSON: \(error)")
        }
    }
}
