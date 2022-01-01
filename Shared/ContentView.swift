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
                            .multilineTextAlignment(.center)
                            .fixedSize(horizontal: false, vertical: true)
                            .lineSpacing(10)
                        ZStack {
                            Common.Colors.kPlanBackgroundColor
                            HStack(spacing: 15) {
                                ZStack {
                                    Image("MusicIcon")
                                        .resizable()
                                        .frame(width: 48, height: 48)
                                }
                                VStack(spacing: 10) {
                                    Text("Annual Plan")
                                        .foregroundColor(Common.Colors.kTitleColor)
                                        .font(.subheadline.weight(.heavy))
                                    Text("$59.99/year")
                                        .foregroundColor(Common.Colors.kContentColor)
                                        .font(.subheadline.weight(.medium))
                                }
                                Spacer()
                                Text("Change")
                                    .foregroundColor(.blue)
                                    .font(.subheadline.weight(.heavy))
                                    .underline()
                            }
                            .padding(20)
                        }
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        VStack(spacing: 10) {
                            Button {

                            } label: {
                                Text("Proceed to Payment")
                                    .foregroundColor(.white)
                                    .font(.title3.weight(.semibold))
                            }
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .padding()
                            .background(Common.Colors.kButtonColor)
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                            .shadow(radius: 10)
                            Button(role: .cancel) {

                            } label: {
                                Text("Cancel Order")
                                    .foregroundColor(Common.Colors.kContentColor)
                                    .font(.title3.weight(.semibold))
                            }
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .padding()
                        }
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
