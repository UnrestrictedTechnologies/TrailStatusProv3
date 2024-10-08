//
//  FeatureCard.swift
//  TrailStatusProv3
//
//  Created by Eric Forbes on 10/8/24.
//

import SwiftUI

struct FeatureCard: View {
  var trailSystem: TrailSystem
  
    var body: some View {
      trailSystem.featureImage?
        .resizable()
    }
}

#Preview {
  FeatureCard(trailSystem: ModelData().features[0])
    .aspectRatio(3 / 2, contentMode: .fit)
}
