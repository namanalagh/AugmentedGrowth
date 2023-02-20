//
//  Planets.swift
//  AugmentedGrowth
//
//  Created by Naman Alagh on 21/02/23.
//

import Foundation


struct Planet {
    var id: UUID
    var name: String
    var thumbnail: String
}

let planets: [Planet] = [Planet(id: UUID(), name: "The Sun", thumbnail: "Sun"),
                         Planet(id: UUID(), name: "Mercury", thumbnail: "Mercury"),
                         Planet(id: UUID(), name: "Venus", thumbnail: "Venus"),
                         Planet(id: UUID(), name: "Earth", thumbnail: "Earth"),
                         Planet(id: UUID(), name: "Mars", thumbnail: "Mars"),
                         Planet(id: UUID(), name: "The Asteroid Belt", thumbnail: "Big Asteroid"),
                         Planet(id: UUID(), name: "Jupiter", thumbnail: "Jupiter"),
                         Planet(id: UUID(), name: "Saturn", thumbnail: "Saturn"),
                         Planet(id: UUID(), name: "Uranus", thumbnail: "Uranus"),
                         Planet(id: UUID(), name: "Neptune", thumbnail: "Neptune"),
                        ]
