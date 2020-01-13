//
//  RestaurantController.swift
//  FoodieFun01
//
//  Created by Angelique Abacajan on 1/8/20.
//  Copyright © 2020 Angelique Abacajan. All rights reserved.
//
/*
import Foundation
import CoreData

class RestaurantController {
    let baseURL = URL(string: "URL/API")!
    
    struct HTTPMethod {
        static let get = "GET"
        static let put = "PUT"
        static let post = "POST"
        static let delete = "DELETE"
    }
    
    // MARK: - Task Actions
    
    func fetchRestaurantsFromServer(completion: @escaping (Error?) -> Void) {
                
        let requestURL = baseURL.appendingPathExtension("json")
        
        let request = URLRequest(url: requestURL)
        
        URLSession.shared.dataTask(with: request) { data, _, error in
            if let error = error {
                print("Error fetching tasks: \(error)")
                completion(nil)
                return
            }
            
            guard let data = data else {
                print("No data returned from data task.")
                completion(nil)
                return
            }
            
            let jsonDecoder = JSONDecoder()
            do {
                let decoded = try jsonDecoder.decode([String: RestaurantRepresentation].self, from: data).map { $0.value }
                self.updateTasks(with: decoded)
                completion(nil)
            } catch {
                print("Unable to decode data into object of type [MovieRepresentation]: \(error)")
                completion(nil)
            }
        }.resume()
    }
    
    func sendRestaurantToServer(restaurant: Restaurant, completion: @escaping () -> Void = { }) {
        
        let identifier = restaurant.identifier ?? UUID()
        restaurant.identifier = identifier
        
        let requestURL = baseURL
            .appendingPathComponent(identifier.uuidString)
            .appendingPathExtension("json")
        
        var request = URLRequest(url: requestURL)
        request.httpMethod = HTTPMethod.put
        
        guard let restaurantRepresentation = restaurant.restaurantRepresentation {
            print("Movie Representation is nil")
            completion()
            return
        }
        
        do {
            try CoreDataStack.shared.save(context: CoreDataStack.shared.mainContext)
            request.httpBody = try JSONEncoder().encode(restaurantRepresentation)
        } catch {
            print("Error encoding movie representation: \(error)")
            completion()
            return
        }
        
        URLSession.shared.dataTask(with: request) { _, _, error in
            
            if let error = error {
                print("Error PUTting data: \(error)")
                completion()
                return
            }
            
            completion()
        }.resume()
    }
    
    func deleteRestaurant(_ restaurant: Restaurant, completion: @escaping () -> Void = { }) {
        
        let identifier = restaurant.identifier ?? UUID()
        restaurant.identifier = identifier
        
        let requestURL = baseURL
            .appendingPathComponent(identifier.uuidString)
            .appendingPathExtension("json")
        
        var request = URLRequest(url: requestURL)
        request.httpMethod = HTTPMethod.delete
        
        guard let restaurantRepresentation = restaurant.restaurantRepresentation else {
            print("Movie Representation is nil")
            completion()
            return
        }
        
        let context = CoreDataStack.shared.mainContext
        
        do {
            context.delete(restaurant)
            try CoreDataStack.shared.save(context: CoreDataStack.shared.mainContext)
        } catch {
            context.reset()
            print("Error deleting object from managed object context: \(error)")
        }
        
        do {
            request.httpBody = try JSONEncoder().encode(restaurantRepresentation)
        } catch {
            print("Error encoding movie representation: \(error)")
            completion()
            return
        }
        
        URLSession.shared.dataTask(with: request) { _, _, error in
            
            if let error = error {
                print("Error PUTting data: \(error)")
                completion()
                return
            }
            
            completion()
        }.resume()
    }
    
    // MARK: - Private Methods
    
    func updateTasks(with representations: [RestaurantRepresentation]) {
                
        let identifiersToFetch = representations.map { $0.identifier }
        
        let representationsByID = Dictionary(uniqueKeysWithValues: zip(identifiersToFetch, representations))
                
        let restaurantsToCreate = representationsByID
        
        let fetchRequest: NSFetchRequest<Restaurant> = Restaurant.fetchRequest()
        fetchRequest.predicate = NSPredicate(format: "identifier IN %@", identifiersToFetch)
        
        let context = CoreDataStack.shared.container.newBackgroundContext()
        
        context.performAndWait {
            
            
            
            do {
                let existingMovies = try context.fetch(fetchRequest)
                
                for movie in existingMovies {

                    guard let identifier = movie.identifier,
                        let representation = representationsByID[identifier] else { continue }
//                    restaurant.name = representation.name
//
//
//                    moviesToCreate.removeValue(forKey: identifier)
                }
                
                
                for representation in restaurantsToCreate.values {
                    Restaurant(restaurantRepresentation: representation, context: context)
                }
                CoreDataStack.shared.save(context: context)
            } catch {
                print("Error fetching tasks from persistent store: \(error)")
            }
        }
    }
 }*/
