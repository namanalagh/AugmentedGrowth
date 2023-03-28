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
    var radius: Double? // in km
    var distanceFromSun: Double? // in million km
    var noOfMoons: Int?
    var year: Double? //in earth days
    var day: Double? // in earth days
    var modelFileName: String?
    var model: String?
}

let planets: [Planet] = [Planet(id: UUID(), name: "The Sun", thumbnail: "Sun", description: ""),
                         Planet(id: UUID(), name: "Mercury", thumbnail: "Mercury",description: "The smallest planet in our solar system", radius: 2439.7, distanceFromSun: 58, noOfMoons: 0, year: 88, day: 59),
                         Planet(id: UUID(), name: "Venus", thumbnail: "Venus",description: "A day here is longer than a year!", radius: 6051.8, distanceFromSun: 107.65, noOfMoons: 0, year: 225, day: 243),
                         Planet(id: UUID(), name: "Earth", thumbnail: "Earth",description: "Hey, that's us!", radius: 6371, distanceFromSun: 149.08, noOfMoons: 1, year: 365, day: 1, modelFileName: "Earth", model: "Earth"),
                         Planet(id: UUID(), name: "Mars", thumbnail: "Mars",description: "We're still looking for signs of life here", radius: 3390, distanceFromSun: 152.73, noOfMoons: 0, year: 687, day: 1.03),
                         Planet(id: UUID(), name: "The Asteroid Belt", thumbnail: "Big Asteroid", description: ""),
                         Planet(id: UUID(), name: "Jupiter", thumbnail: "Jupiter", description: "The largest planet in our solar system", radius: 69911, distanceFromSun: 460.32, noOfMoons: 80, year: 4328.9, day: 0.41),
                         Planet(id: UUID(), name: "Saturn", thumbnail: "Saturn",description: "Did you know Saturn's rings are made of ice?!"),
                         Planet(id: UUID(), name: "Uranus", thumbnail: "Uranus",description: "A cold, desolate, ice giant"),
                         Planet(id: UUID(), name: "Neptune", thumbnail: "Neptune",description: "It rains diamonds on Neptune!"),
                        ]

struct Continent {
    var id: UUID
    var name: String
    var thumbnail: String
    var size: Float // million km sq
    var countries: Int
    var brief_desc: String
}


let continents: [Continent] =   [Continent(id: UUID(), name: "Asia", thumbnail: "Asia", size:                                   44.8, countries: 48, brief_desc: "Asia is the largest                                       continent in our planet."),
                                Continent(id: UUID(), name: "Africa", thumbnail: "Africa", size: 30.37, countries: 54, brief_desc: "It is the 2nd largest Continent, mostly known for the savannah."),
                                Continent(id: UUID(), name: "North America", thumbnail: "North America", size: 24.71, countries: 23, brief_desc: "The 3rd largest continent, mostly known for the United States America."),
                                Continent(id: UUID(), name: "South America", thumbnail: "South America", size: 17.84, countries: 12, brief_desc: "The 4th largest continent on Earth, mostly known for the Amazon forest."),
                                Continent(id: UUID(), name: "Antarctica", thumbnail: "Antarctica", size: 13.66, countries: 0, brief_desc: "The 5th largest or 3rd smallest continent, known for the cold & harsh environment with penguins and polar bears."),
                                Continent(id: UUID(), name: "Europe", thumbnail: "Europe", size: 10.53, countries: 44, brief_desc: "The 6th largest Continent, mostly known for Paris and Germany."),
                                Continent(id: UUID(), name: "Australia", thumbnail: "Australia", size: 7.69, countries: 3, brief_desc: "The smallest Continent, mostly known for its Kangaroos and unique wildlife")]


struct Plant {
    var id: UUID
    var thumbnail: String
    var name: String
    var function: String
    
}

let plant: [Plant] = [Plant(id: UUID(),thumbnail: "", name: "Leaf", function: "The leaf is responsible for the absorption of sunlight as well as Carbon Dioxide from the environment."),
                      Plant(id: UUID(), thumbnail: "", name: "Root", function: "The Roots are responsible for absorbing the nutrients from the soil around them."),
                      Plant(id: UUID(), thumbnail: "", name: "Flower", function: "The flower acts as a reproductive system for the plants, the flower then turns into a fruit."),
                      Plant(id: UUID(), thumbnail: "", name: "Fruit", function: "The fruit contains seeds with objective of multiplication.")]
