//
//  CategoryRow.swift
//  TrailStatusProv3
//
//  Created by Eric Forbes on 10/8/24.
//

import SwiftUI

struct CategoryRow: View {
  var categoryName: String
  var items: [TrailSystem]
  
    var body: some View {
      VStack(alignment: .leading) {
        Text(categoryName)
          .font(.headline)
          .padding(.leading, 15)
          .padding(.top, 5)
        
        ScrollView(.horizontal, showsIndicators: false) {
          HStack(alignment: .top, spacing: 0) {
            ForEach(items) { trailSystem in
              NavigationLink {
                TrailDetail(trailSystem: trailSystem)
              } label: {
                CategoryItem(trailSystem: trailSystem)
              }
            }
          }
        }
        .frame(height: 185)
      }
    }
}

#Preview {
  let trailSystem = ModelData().trailSystem
  CategoryRow(categoryName: trailSystem[0].category.rawValue,
              items: Array(trailSystem.prefix(4)))
}
