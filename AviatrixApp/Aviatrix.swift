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
    var distanceTraveled = 0
    var maxFuel = 5000.0
    var fuelLevel = 5000.0
    var milesPerGallon = 0.4
    var fuelCost = 0.0
    var author = ""
    
    init(authorName : String) {
        author = authorName
    }
    
    func start() -> Bool {
        running = true
        return running
    }
    
    func refuel() -> Double {
        let refuelAmount = maxFuel - fuelLevel
        fuelCost += refuelAmount*data.fuelPrices[location]!
        fuelLevel = 5000.0
        return refuelAmount
    }
    
    func flyTo(destination : String) {
        distanceTraveled += distanceTo(area: location, target: destination)
        location = destination
        fuelLevel -= Double(distanceTraveled)*milesPerGallon
    }
    
    var data = AviatrixData()
    var location = "St. Louis"
    func distanceTo(area : String, target : String) -> Int {
        return data.knownDistances[area]![target]!
    }
    
    func knownDestinations() -> [String] {
       return ["St. Louis", "Phoenix", "Denver", "SLC"]
    }
    
    
}
