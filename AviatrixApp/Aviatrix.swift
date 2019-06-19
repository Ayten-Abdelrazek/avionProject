//
//  Aviatrix.swift
//  AviatrixApp
//
//  Created by Amy Holt on 6/10/18.
//  Copyright © 2018 Amy Holt. All rights reserved.
//

import Foundation

class Aviatrix {
    var running = false
    var author : String
    var data = AviatrixData()
    var location = "St. Louis"
    var distanceTraveled = 0
    var maxFuel = 5000
    var fuelLevel = 5000.0
    var milesPerGallon = 0.4
    
    init(authorName : String) {
        author = authorName
    }
    
    func start() -> Bool {
        running = true
        
        return true
    }
    
    func refuel() {
        
    }
    
    func flyTo(destination : String) {
        distanceTraveled += distanceTo(target : destination)
        location = destination
        fuelLevel -= Double(distanceTraveled) / milesPerGallon 
        
    }
    
    func distanceTo(target : String) -> Int {
        return data.knownDistances[location]![target]!
    }
    
    func knownDestinations() -> [String] {
       return ["St. Louis", "Phoenix", "Denver", "SLC"]
    }
}
