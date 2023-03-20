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
    var modelFileName: String?
    var model: String?
}

let planets: [Planet] = [Planet(id: UUID(), name: "The Sun", thumbnail: "Sun", description: ""),
                         Planet(id: UUID(), name: "Mercury", thumbnail: "Mercury",description: "The smallest planet in our solar system"),
                         Planet(id: UUID(), name: "Venus", thumbnail: "Venus",description: "A day here is longer than a year!"),
                         Planet(id: UUID(), name: "Earth", thumbnail: "Earth",description: "Hey, that's us!", modelFileName: "Earth", model: "Earth"),
                         Planet(id: UUID(), name: "Mars", thumbnail: "Mars",description: "We're still looking for signs of life here"),
                         Planet(id: UUID(), name: "The Asteroid Belt", thumbnail: "Big Asteroid", description: ""),
                         Planet(id: UUID(), name: "Jupiter", thumbnail: "Jupiter", description: "The largest planet in our solar system"),
                         Planet(id: UUID(), name: "Saturn", thumbnail: "Saturn",description: "Did you know Saturn's rings are made of ice?!"),
                         Planet(id: UUID(), name: "Uranus", thumbnail: "Uranus",description: "A cold, desolate, ice giant"),
                         Planet(id: UUID(), name: "Neptune", thumbnail: "Neptune",description: "It rains diamonds on Neptune!"),
                        ]

struct Continent {
    var id: UUID
    var name: String
    var thumbnail: String
}
