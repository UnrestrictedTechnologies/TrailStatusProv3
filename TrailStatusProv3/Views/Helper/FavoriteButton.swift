//
//  FavoriteButton.swift
//  TrailStatusProv3
//
//  Created by Eric Forbes on 10/5/24.
//

import SwiftUI

struct FavoriteButton: View {
  @Binding var isSet: Bool
  
  
    var body: some View {
      Button {
        isSet.toggle()
      } label: {
        Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
          .labelStyle(.iconOnly)
          .foregroundStyle(isSet ? .brown : .gray)
      }
    }
}

#Preview {
  FavoriteButton(isSet: .constant(true))
  
}
