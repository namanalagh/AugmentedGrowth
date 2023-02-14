//
//  Topic.swift
//  AugmentedGrowth
//
//  Created by Naman Alagh on 09/02/23.
//

import Foundation

struct Topic {
    var grade: Int
    var subject: String
    var topicNo: Int
    var topicTitle: String
    var difficulty: String
    var image: String?
}

struct Grade {
    var gradeNo: Int
    var title: String
}

struct Subject {
    var title: String
}

var allTopics: [Topic] = [
    Topic(grade: 1, subject: "Mathematics", topicNo: 1, topicTitle: "Shapes and Spatial Understanding", difficulty: "Easy"),
    Topic(grade: 1, subject: "Mathematics", topicNo: 2, topicTitle: "Solids Around Us", difficulty: "Easy"),
    Topic(grade: 1, subject: "Mathematics", topicNo: 3, topicTitle: "Numbers from 0-9", difficulty: "Easy"),
    Topic(grade: 1, subject: "Mathematics", topicNo: 4, topicTitle: "Numbers from 10-20", difficulty: "Easy"),
    Topic(grade: 1, subject: "Mathematics", topicNo: 5, topicTitle: "Addition And Subtraction (Upto 20)", difficulty: "Easy"),
    Topic(grade: 1, subject: "Mathematics", topicNo: 6, topicTitle: "Numbers from 21–99", difficulty: "Easy"),
    Topic(grade: 1, subject: "Mathematics", topicNo: 7, topicTitle: "Mental Arithmetic", difficulty: "Easy"),
    Topic(grade: 1, subject: "Mathematics", topicNo: 8, topicTitle: "Money", difficulty: "Easy"),
    Topic(grade: 1, subject: "Mathematics", topicNo: 9, topicTitle: "Measurements", difficulty: "Easy"),
    Topic(grade: 1, subject: "Mathematics", topicNo: 10, topicTitle: "Patterns", difficulty: "Easy"),
    Topic(grade: 8, subject: "Chemistry", topicNo: 1, topicTitle: "Matter", difficulty: "Easy"),
    Topic(grade: 8, subject: "Chemistry", topicNo: 2, topicTitle: "Physical and Chemical Changes", difficulty: "Easy"),
    Topic(grade: 8, subject: "Chemistry", topicNo: 3, topicTitle: "Elements, Compounds and Mixtures", difficulty: "Easy"),
    Topic(grade: 8, subject: "Chemistry", topicNo: 4, topicTitle: "Atomic Structure", difficulty: "Easy"),
    Topic(grade: 8, subject: "Chemistry", topicNo: 5, topicTitle: "Language of Chemistry", difficulty: "Easy"),
    Topic(grade: 8, subject: "Chemistry", topicNo: 6, topicTitle: "Chemical Reactions", difficulty: "Easy"),
    Topic(grade: 8, subject: "Chemistry", topicNo: 7, topicTitle: "Hydrogen", difficulty: "Easy"),
    Topic(grade: 8, subject: "Chemistry", topicNo: 8, topicTitle: "Water", difficulty: "Easy"),
    Topic(grade: 8, subject: "Chemistry", topicNo: 9, topicTitle: "Carbon and its Compounds", difficulty: "Easy"),
    Topic(grade: 8, subject: "Chemistry", topicNo: 10, topicTitle: "Water", difficulty: "Easy"),
    Topic(grade: 8, subject: "Astronomy", topicNo: 1, topicTitle: "Journey to Outer Space", difficulty: "Easy"),
    Topic(grade: 8, subject: "Astronomy", topicNo: 2, topicTitle: "Explore Jupiter", difficulty: "Easy"),
    Topic(grade: 8, subject: "Astronomy", topicNo: 3, topicTitle: "The Asteroid Belt", difficulty: "Easy"),
    Topic(grade: 8, subject: "Astronomy", topicNo: 4, topicTitle: "Saturn's Rings", difficulty: "Easy"),
    Topic(grade: 8, subject: "Astronomy", topicNo: 5, topicTitle: "Explore Venus", difficulty: "Easy"),
    Topic(grade: 8, subject: "Astronomy", topicNo: 6, topicTitle: "Explore Mars", difficulty: "Easy"),
    Topic(grade: 8, subject: "Astronomy", topicNo: 7, topicTitle: "Earth: Our Home Planet", difficulty: "Easy"),
    
]
