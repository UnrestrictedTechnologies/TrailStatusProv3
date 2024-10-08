//
//  TrailStatusProv3App.swift
//  TrailStatusProv3
//
//  Created by Eric Forbes on 10/2/24.
//

import SwiftUI

@main
struct TrailStatusProv3App: App {
  @State private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
          ContentView()
            .environment(modelData)
        }
    }
}
