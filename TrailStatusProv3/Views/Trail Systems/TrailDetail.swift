//
//  TrailDetail.swift
//  TrailStatusProv3
//
//  Created by Eric Forbes on 10/2/24.
//

import SwiftUI

/* see ride clt app*/

struct TrailDetail: View {
  @Environment(ModelData.self) var modelData
  var trailSystem: TrailSystem
  
  var trailIndex: Int {
    modelData.trailSystem.firstIndex(where: { $0.id == trailSystem.id})!
  }
  
  var body: some View {
    @Bindable var modelData = modelData
    
    ScrollView {
      VStack {
        MapView(coordinate: trailSystem.locationCoordinate)
          .frame(height: 380)
        
        ImageShapeView(image: trailSystem.image)
          .offset(y: -130)
          .padding(.bottom, -130)
        
        VStack(alignment: .leading) {
          HStack {
            Text(trailSystem.name)
              .font(.title)
              .fontWeight(.semibold)
            FavoriteButton(isSet: $modelData.trailSystem[trailIndex].isFavorite)
          }
          HStack {
            Text(trailSystem.park)
            Spacer()
            Text(trailSystem.state)
          }
          .font(.subheadline)
          .foregroundStyle(.secondary)
          
          Divider()
          
          Text("About \(trailSystem.name)")
            .font(.title2)
            .fontWeight(.semibold)
          Text(trailSystem.description)
        }
        
        .padding()
        
        Spacer()
      }
    }
    .ignoresSafeArea()
    .navigationTitle(trailSystem.name)
    .navigationBarTitleDisplayMode(.inline)
  }
}

#Preview {
  let modelData = ModelData()
  TrailDetail(trailSystem: ModelData().trailSystem[4])
    .environment(modelData)
}
