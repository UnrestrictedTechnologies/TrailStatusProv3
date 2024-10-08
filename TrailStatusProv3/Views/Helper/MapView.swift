//
//  MapView.swift
//  TrailStatusProv3
//
//  Created by Eric Forbes on 10/2/24.
//

import SwiftUI
import MapKit

struct MapView: View {
  var coordinate: CLLocationCoordinate2D
  
    var body: some View {
      Map(position: .constant(.region(region)))
    }
  
  private var region: MKCoordinateRegion {
    MKCoordinateRegion(
      center: coordinate,
      span: MKCoordinateSpan(latitudeDelta: 0.002, longitudeDelta: 0.002)
      )
  }
}

#Preview {
  MapView(coordinate: CLLocationCoordinate2D(latitude: 34.16153, longitude: -84.53931))
}
