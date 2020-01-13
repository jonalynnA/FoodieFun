//
//  Restaurant+Convenience.swift
//  FoodieFun01
//
//  Created by Angelique Abacajan on 1/8/20.
//  Copyright © 2020 Angelique Abacajan. All rights reserved.
//
/*
import Foundation
import CoreData

extension Restaurant {
    
    @discardableResult convenience init(name: String,
                                        cuisineType: String,
                                        hoursOfOperation: String?,
                                        location: String?,
                                        ratings: Int,
                                        review: String,
                                        identifier: String = UUID().uuidString,
                                        context: NSManagedObjectContext = CoreDataStack.shared.mainContext) {
        
        self.init(context: context)
        
        self.name = name
        self.cuisineType = cuisineType
        self.hoursOfOperation = hoursOfOperation
        self.location = location
        self.ratings = ratings
        self.review = review
        self.identifier = identifier
    }
    
    @discardableResult convenience init?(restaurantRepresentation: RestaurantRepresentation, context: NSManagedObjectContext) {
        
        guard let name = restaurantRepresentation.name,
            let cuisineType = restaurantRepresentation.cuisineType,
            let hoursOfOperation = restaurantRepresentation.hoursOfOperation,
            let location = restaurantRepresentation.location,
            let ratings = restaurantRepresentation.ratings,
            let review = restaurantRepresentation.review,
            let identifier = restaurantRepresentation.identifier else { return nil }
        
        self.init(name: name, cuisineType: cuisineType, hoursOfOperation: hoursOfOperation, location: location, ratings: ratings, review: review, identifier: identifier, context: context)
    }
    
    var restaurantRepresentation: RestaurantRepresentation {
        return RestaurantRepresentation(name: name, cuisineType: cuisineType, hoursOfOperation: hoursOfOperation, location: location, ratings: ratings, review: review, identifier: identifier)
    }
}
*/
