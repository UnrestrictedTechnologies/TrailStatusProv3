//
//  ModelData.swift
//  TrailStatusProv3
//
//  Created by Eric Forbes on 10/2/24.
//

import Foundation

@Observable
class ModelData {
  var trailSystem: [TrailSystem] = load("landmarkData.json")
 // var hikes: [Hikes] = load("hikeData.json")\
  
  var features: [TrailSystem] {
    trailSystem.filter { $0.isFeatured }
  }
  
  var categories: [String: [TrailSystem]] {
    Dictionary(
      grouping: trailSystem,
      by: { $0.category.rawValue }
    )
  }
}


func load<T: Decodable>(_ filename: String) -> T {
  let data: Data
  
  guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
  else {
    fatalError("Couldn't find \(filename) in main bundle")
  }
  
  do {
    data = try Data(contentsOf: file)
  } catch {
    fatalError("Couldn't load \(filename) from main bundle: \n\(error)")
  }
  
  do {
    let decoder = JSONDecoder()
    return try decoder.decode(T.self, from: data)
  } catch {
    fatalError("Couldn't parse \(filename) as \(T.self): \n\(error)")
  }
}
