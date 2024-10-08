//
//  ContentView.swift
//  TrailStatusProv3
//
//  Created by Eric Forbes on 10/2/24.
//

import SwiftUI

struct ContentView: View {
  @State private var selection: Tab = .featured
  
  enum Tab {
    case featured
    case list
  }
  
  var body: some View {
    TabView(selection: $selection) {
      CategoryHome()
        .tabItem {
          Label("Featured", systemImage: "star")
        }
        .tag(Tab.featured)
      
      TrailSystemList()
        .tabItem {
          Label("List", systemImage: "list.bullet")
        }
        .tag(Tab.list)
    }
  }
}

#Preview {
  ContentView()
    .environment(ModelData())
}
