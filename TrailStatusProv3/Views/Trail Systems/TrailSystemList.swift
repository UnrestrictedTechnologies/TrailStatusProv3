//
//  TrailSystemList.swift
//  TrailStatusProv3
//
//  Created by Eric Forbes on 10/2/24.
//

import SwiftUI

struct TrailSystemList: View {
  @Environment(ModelData.self) var modelData
  @State private var showFavoritesOnly: Bool = false
  
  var filteredTrails: [TrailSystem] {
    modelData.trailSystem.filter { trail in
      (!showFavoritesOnly || trail.isFavorite)
    }
  }

  

  
  var body: some View {
    NavigationSplitView {
      List {
        Toggle(isOn: $showFavoritesOnly) {
          Text("Favorites Only")
        }
        .toggleStyle(.switch)
        
        
        ForEach(filteredTrails) { trail in
          NavigationLink {
            TrailDetail(trailSystem: trail)
          } label: {
            TrailSystemRow(trailSystem: trail)
          }
        }
      }
      .listStyle(.sidebar)
      .animation(.default, value: filteredTrails)
      .navigationTitle("Trail Systems")
    } detail: {
      Text("Select a system")
    }
    
  }
}

#Preview {
  TrailSystemList()
    .environment(ModelData())
}
