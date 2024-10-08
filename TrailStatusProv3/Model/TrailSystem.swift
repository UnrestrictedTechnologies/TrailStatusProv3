//
//  TrailSystem.swift
//  TrailStatusProv3
//
//  Created by Eric Forbes on 10/2/24.
//

import Foundation
import SwiftUI
import CoreLocation

// was previously Landmark.swift


struct TrailSystem: Hashable, Codable, Identifiable {
  var id: Int
  var name: String
  var park: String
  var state: String
  var description: String
  var isFavorite: Bool
  var isFeatured: Bool
  
  var category: Category
  enum Category: String, CaseIterable, Codable {
    case lakes = "Lakes"
    case rivers = "Rivers"
    case mountains = "Mountains"
  }
  
/*
 Add an imageName property to read the name of the image from the data,
 and a computed image property that loads an image from the asset catalog.
 
 You make the property private because users of the Landmarks structure care only about the image itself.
 */

  private var imageName: String
  var image: Image {
    Image(imageName)
  }
  var featureImage: Image? {
          isFeatured ? Image(imageName + "_feature") : nil
      }
  
  private var coordinates: Coordinates
  var locationCoordinate: CLLocationCoordinate2D {
    CLLocationCoordinate2D(
      latitude: coordinates.latitude,
      longitude: coordinates.longitude
    )
  }
  
    struct Coordinates: Hashable, Codable {
      var latitude: Double
      var longitude: Double
  }
}
