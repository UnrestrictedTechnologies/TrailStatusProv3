//
//  FavButtonMock.swift
//  TrailStatusProv3
//
//  Created by Eric Forbes on 10/5/24.
//

import SwiftUI

struct FavButtonMock: View {
  @State var isTapped = false
  @State var animated = false
  
  var body: some View {
    ZStack {
      ForEach(0..<6) { i in
        Circle().frame(width: 30, height: 30)
          .scaleEffect(animated ? 0 : 1)
          .offset(y: animated ? -50 : 0)
          .rotationEffect(.degrees(Double(i) * 60))
          .opacity(animated ? 1 : 0)
      }
      
      Image(systemName: isTapped ? "star.fill" : "star")
        .contentTransition(.symbolEffect)
        .font(.largeTitle)
    }
    .foregroundStyle(isTapped ? .brown : .brown)
    .onTapGesture {
      withAnimation(.spring(duration: 1)) {
        isTapped.toggle()
      }
      withAnimation(isTapped ?.spring(duration: 1) : .none) {
        animated.toggle()
      }
    }
  }
}


#Preview {
  FavButtonMock()
  
}
