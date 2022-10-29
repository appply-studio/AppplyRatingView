//
//  RatingView.swift
//  AppplyRatingView
//
//  Created by Avik Bagh on 10/26/22.
//

import SwiftUI

struct AppplyRatingView: View {
    @State var maximum: Int = 5
    @State var minimum: Int = 0
    @State var value: Int
    @State var onImage: Image = Image(systemName: "star.fill")
    @State var offImage: Image?
    @State var onColor: Color = Color.yellow
    @State var offColor: Color = Color.gray
    @State var separationSpacing: CGFloat = 10
    @State var scale: Image.Scale = .medium
    var onChanged: (Int) -> Void
    
    var body: some View {
        HStack(spacing: separationSpacing) {
            ForEach(minimum..<maximum, id: \.self) { k in
                imageFor(number: k)
                    .onTapGesture {
                        value = k
                        onChanged(value + 1)
                    }
            }
        }
    }
    
    func imageFor(number k: Int) -> some View {
        (k > value ? (offImage ?? onImage).foregroundColor(offColor) : onImage.foregroundColor(onColor)).imageScale(scale)
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        AppplyRatingView(value: 3, separationSpacing: 8) { val in
            
        }
    }
}
