//
//  ContentView.swift
//  AppplyRatingView
//
//  Created by Avik Bagh on 10/26/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        RatingView(value: 3) { k in
            print(k)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
