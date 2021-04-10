//
//  TeamName.swift
//  NHLPlayers
//
//  Created by Dmitry Suhoversky on 10.04.21.
//

import Foundation

struct Team {
    let name: String
    let city: String
    let devision: String
    
    var fullName: String {
        return city + " " + name
    }
}

let Penguins = Team(name: "Penguins", city: "Pittsburgh", devision: "MassMutual East Division")
let Devils = Team(name: "Devils", city: "New Jersey", devision: "MassMutual East Division")

