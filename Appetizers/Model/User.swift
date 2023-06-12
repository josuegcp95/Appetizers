//
//  User.swift
//  Appetizers
//
//  Created by Josue Cruz on 6/9/23.
//

import Foundation

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthdate = Date()
    var extraNapkins = false
    var freequentRefills = false
}
