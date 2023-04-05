//
//  DataModel.swift
//  AugmentedGrowth
//
//  Created by Naman Alagh on 21/02/23.
//

import Foundation


struct Planet {
    var id: UUID
    var name: String
    var thumbnail: String
    var description: String
    var radius: Int? // in km
    var distanceFromSun: Int? // in million km
    var noOfMoons: Int?
    var year: Double? //in earth days
    var day: Double? // in earth days
    var modelFileName: String?
    var model: String?
    var link: String
}

let planets: [Planet] = [Planet(id: UUID(), name: "The Sun", thumbnail: "Sun", description: "", radius: 696340, model: "Sun", link: "https://solarsystem.nasa.gov/solar-system/sun/overview/"),
                         Planet(id: UUID(), name: "Mercury", thumbnail: "Mercury",description: "The smallest planet in our solar system", radius: 2440, distanceFromSun: 58, noOfMoons: 0, year: 88, day: 59, model: "Mercury",link: "https://solarsystem.nasa.gov/planets/mercury/overview/"),
                         Planet(id: UUID(), name: "Venus", thumbnail: "Venus",description: "A day here is longer than a year!", radius: 6052, distanceFromSun: 108, noOfMoons: 0, year: 225, day: 243, model: "Venus", link: "https://solarsystem.nasa.gov/planets/venus/overview/"),
                         Planet(id: UUID(), name: "Earth", thumbnail: "Earth",description: "Hey, that's us!", radius: 6371, distanceFromSun: 149, noOfMoons: 1, year: 365, day: 1, modelFileName: "Earth", model: "Earth",link: "https://solarsystem.nasa.gov/planets/earth/overview/"),
                         Planet(id: UUID(), name: "Mars", thumbnail: "Mars",description: "We're still looking for signs of life here", radius: 3390, distanceFromSun: 153, noOfMoons: 0, year: 687, day: 1.03,model: "Mars", link: "https://solarsystem.nasa.gov/planets/mars/overview/"),
                         Planet(id: UUID(), name: "The Asteroid Belt", thumbnail: "Big Asteroid", description: "", link: ""),
                         Planet(id: UUID(), name: "Jupiter", thumbnail: "Jupiter", description: "The largest planet in our solar system", radius: 69911, distanceFromSun: 460, noOfMoons: 80, year: 4328.9, day: 0.41, model: "Jupiter", link: "https://solarsystem.nasa.gov/planets/jupiter/overview/"),
                         Planet(id: UUID(), name: "Saturn", thumbnail: "Saturn",description: "Did you know Saturn's rings are made of ice?!", radius: 58232, distanceFromSun: 1468, noOfMoons: 83, year: 10585, day: 0.45, model: "Saturn", link: "https://solarsystem.nasa.gov/planets/saturn/overview/"),
                         Planet(id: UUID(), name: "Uranus", thumbnail: "Uranus",description: "A cold, desolate, ice giant", radius: 25362, distanceFromSun: 3059, noOfMoons: 27, year: 30660, day: 0.7, model: "Uranus",link: "https://solarsystem.nasa.gov/planets/uranus/overview/"),
                         Planet(id: UUID(), name: "Neptune", thumbnail: "Neptune",description: "It rains diamonds on Neptune!", radius: 24662, distanceFromSun: 4474, noOfMoons: 14, year: 60225, day: 0.67, model: "Neptune",link: "https://solarsystem.nasa.gov/planets/neptune/overview/")
                        ]

struct Continent {
    var id: UUID
    var name: String
    var thumbnail: String
}
