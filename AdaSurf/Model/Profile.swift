//
//  Profile.swift
//  AdaSurf
//
//  Created by Delhia Gbelidji on 25/01/2023.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotifications = true
    var level = Level.begginer
    var day = Date()

    static let `default` = Profile(username: "Dede & Le K & KRRRRIS & Nicoco")

    enum Level: String, CaseIterable, Identifiable {
        case begginer = "🏄🏽‍♀️"
        case intermediate = "🏄🏽‍♀️🏄🏽‍♀️"
        case expert = "🏄🏽‍♀️🏄🏽‍♀️🏄🏽‍♀️"
        case goat = "🏄🏽‍♀️🏄🏽‍♀️🏄🏽‍♀️🏄🏽‍♀️"

        var id: String { rawValue }
    }
}
