//
//  CustomToggle.swift
//  TrailStatusProv3
//
//  Created by Eric Forbes on 10/3/24.
//

import SwiftUI

struct CustomToggle: View {
  @Binding var isOn: Bool
  @State private var bikeCogRoatation: Double = 0.0
  
  @Environment(\.colorScheme) var colorScheme
  
  var body: some View {
    ZStack {
//      RoundedRectangle(cornerRadius: 25)
//       .opacity(0.5)
//        .frame(width: 85, height: 50)
//        .foregroundStyle(.brown)
      HStack {
        Image(colorScheme == .dark ? "bikeCogWhite" : "bikeCog")
          .resizable()
          .frame(width: 40, height: 40)
          .rotationEffect(.degrees(bikeCogRoatation))
          .animation(Animation.linear(duration: 0.75), value: bikeCogRoatation)
          .onTapGesture {
            withAnimation {
              bikeCogRoatation += 180
              isOn.toggle()
            }
          }
        
        Text(isOn ? "ON" : "OFF")
          .font(.headline)
      }
      .padding()
      // .background(Color.brown.opacity(0.1))
      //.cornerRadius(30)
    }
  }
}

#Preview {
  CustomToggle(isOn: .constant(true))
}
