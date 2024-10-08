//
//  TrailSystemRow.swift
//  TrailStatusProv3
//
//  Created by Eric Forbes on 10/2/24.
//

import SwiftUI

struct TrailSystemRow: View {
  var trailSystem: TrailSystem

  
    var body: some View {
      HStack {
        trailSystem.image
          .resizable()
          .frame(width: 50, height: 50)
          .clipShape(Circle())
          .shadow(radius: 7)
          .overlay {
            Circle()
              .stroke(style: StrokeStyle(lineWidth: 2))
            // add property to dyanmically change color based on trail status
              .foregroundStyle(.brown)
            //  .blur(radius: 1)
          }
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
    TrailSystemRow(trailSystem: trailSystem[0])
    TrailSystemRow(trailSystem: trailSystem[1])

  }
}


