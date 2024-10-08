//
//  CircleImage.swift
//  TrailStatusProv3
//
//  Created by Eric Forbes on 10/2/24.
//

import SwiftUI


struct ImageShapeView: View {
  var image: Image
  
    var body: some View {
      image
        .resizable()
        .aspectRatio(contentMode: .fill)
        .frame(width: 200, height: 200)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .overlay {
          RoundedRectangle(cornerRadius: 20).stroke(.primary, lineWidth: 4)
            .blur(radius: 1)
        }
        .shadow(radius: 7)
    }
}

#Preview {
  ImageShapeView(image: Image("BC1"))
}
