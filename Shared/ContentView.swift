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
            VStack {
                Image("Hero")
                    .resizable()
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
