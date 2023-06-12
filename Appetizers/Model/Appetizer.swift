//
//  Appetizer.swift
//  Appetizers
//
//  Created by Josue Cruz on 5/29/23.
//

import Foundation

struct AppetizerResponse: Decodable {
    let appetizers: [Appetizer]
    
    private enum CodingKeys: String, CodingKey {
        case appetizers = "request"
    }
}

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct MockData {
    
    static let sampleAppetizer = Appetizer(id: 001,
                                           name: "Test Appertizer",
                                           description: "Test Description",
                                           price: 29.99,
                                           imageURL: "photo",
                                           calories: 99,
                                           protein: 99,
                                           carbs: 99)
    
    static let appetizers = Array(repeating: sampleAppetizer, count: 5)
    
    static let orderItemOne = Appetizer(id: 001,
                                           name: "Test Appertizer One",
                                           description: "Test Description",
                                           price: 21.99,
                                           imageURL: "photo",
                                           calories: 99,
                                           protein: 99,
                                           carbs: 99)
    
    static let orderItemTwo = Appetizer(id: 002,
                                           name: "Test Appertizer Two",
                                           description: "Test Description",
                                           price: 29.99,
                                           imageURL: "photo",
                                           calories: 99,
                                           protein: 99,
                                           carbs: 99)
    
    static let orderItemThree = Appetizer(id: 003,
                                           name: "Test Appertizer Three",
                                           description: "Test Description",
                                           price: 25.99,
                                           imageURL: "photo",
                                           calories: 99,
                                           protein: 99,
                                           carbs: 99)
    
    static let orderItems = [orderItemOne, orderItemTwo, orderItemThree]
}


