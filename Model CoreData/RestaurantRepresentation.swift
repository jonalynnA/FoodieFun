//
//  RestaurantRepresentation.swift
//  FoodieFun01
//
//  Created by Angelique Abacajan on 1/8/20.
//  Copyright © 2020 Angelique Abacajan. All rights reserved.
//

import Foundation

struct RestaurantRepresentation: Codable {
    var name: String?
    var cuisineType: String
    var hoursOfOperation: String?
    var location: String?
    var ratings: Int
    var review: String
    var identifier: UUID?
}
