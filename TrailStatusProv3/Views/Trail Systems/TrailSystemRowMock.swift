//
//  TrailSystemRowMock.swift
//  TrailStatusProv3
//
//  Created by Eric Forbes on 10/5/24.
//

import SwiftUI

struct TrailSystemRowMock: View {
  var trailSystem: TrailSystem
  var body: some View {
    
    HStack {
      trailSystem.image
        .resizable()
        .frame(width: 50, height: 50)
       // .clipShape(Circle())
        .shadow(radius: 7)

      Text(trailSystem.name)
      
      Spacer()
      
      if trailSystem.isFavorite {
        Image(systemName: "star.fill")
          .foregroundStyle(.brown)
      }
    }
  }
}



#Preview {
  let trailSystem = ModelData().trailSystem
  Group {
    TrailSystemRowMock(trailSystem: trailSystem[0])
    TrailSystemRowMock(trailSystem: trailSystem[1])
    
  }
}
