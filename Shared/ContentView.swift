//
//  ContentView.swift
//  Shared
//
//  Created by Jinwook Kim on 2022/01/01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Common.Colors.kBackgroundColor
            VStack(spacing: 0) {
                Image("Hero")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                ZStack {
                    Color.white
                    VStack(alignment: .center, spacing: 20) {
                        Text("Order Summary")
                            .foregroundColor(Common.Colors.kTitleColor)
                            .font(.title.weight(.heavy))
                        Text("You can now listen to millions of songs, audiobooks, and podcasts on any device anywhere you like!")
                            .foregroundColor(Common.Colors.kContentColor)
                            .font(.subheadline.weight(.medium))
                            .fixedSize(horizontal: false, vertical: true)
                            .lineSpacing(10)
                    }
                    .padding(30)
                }
            }
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .shadow(radius: 10)
            .padding(.horizontal, 30)
            .scaledToFit()
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 13 Pro Max"))
    }
}
