//
//  FavoriteButton.swift
//  TrailStatusProv3
//
//  Created by Eric Forbes on 10/5/24.
//

import SwiftUI

struct FavoriteButtonModified: View {
  @Binding var isSet: Bool
  @State var animated = false
  
  
  var body: some View {
    ZStack {
      ForEach(0..<6) { i in
        Circle().frame(width: 30, height: 30)
          .scaleEffect(animated ? 0 :1)
          .offset(y: animated ? -50 : 0)
        
          .rotationEffect(.degrees(Double(i) * 60))
          .opacity(animated ? 1 : 0)
      }
      Button {
        isSet.toggle()
      } label: {
        Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
          .labelStyle(.iconOnly)
          .foregroundStyle(isSet ? .brown : .gray)
      }
    }
  }
}

#Preview {
  FavoriteButton(isSet: .constant(true))
  
}
