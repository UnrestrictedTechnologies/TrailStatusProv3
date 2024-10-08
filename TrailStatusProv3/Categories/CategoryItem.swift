//
//  CategoryItem.swift
//  TrailStatusProv3
//
//  Created by Eric Forbes on 10/8/24.
//

import SwiftUI

struct CategoryItem: View {
  var trailSystem: TrailSystem
  
    var body: some View {
      VStack(alignment: .leading) {
        trailSystem.image
          .renderingMode(.original)
          .resizable()
          .aspectRatio(contentMode: .fill)
          .frame(width: 155, height: 155)
          .cornerRadius(5)
        Text(trailSystem.name)
          .foregroundStyle(.primary)
          .font(.caption)
      }
      .padding(.leading, 15)
    }
}

#Preview {
  CategoryItem(trailSystem: ModelData().trailSystem[0])
}
