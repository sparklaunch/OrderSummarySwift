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
                        Text(Common.Texts.kTitle)
                            .foregroundColor(Common.Colors.kTitleColor)
                            .font(.title.weight(.heavy))
                        Text(Common.Texts.kDescription)
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
                                    Text(Common.Texts.kPlanText)
                                        .foregroundColor(Common.Colors.kTitleColor)
                                        .font(.subheadline.weight(.heavy))
                                    Text(Common.Texts.kPrice)
                                        .foregroundColor(Common.Colors.kContentColor)
                                        .font(.subheadline.weight(.medium))
                                }
                                Spacer()
                                Text(Common.Texts.kChangeText)
                                    .foregroundColor(.blue)
                                    .font(.subheadline.weight(.heavy))
                                    .underline()
                            }
                            .padding(20)
                        }
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        VStack(spacing: 10) {
                            Button {
                                // TODO: When the proceed button is clicked.
                            } label: {
                                Text(Common.Texts.kProceedText)
                                    .foregroundColor(.white)
                                    .font(.title3.weight(.semibold))
                            }
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .padding()
                            .background(Common.Colors.kButtonColor)
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                            .shadow(radius: 10)
                            Button(role: .cancel) {
                                // TODO: When the cancel button is clicked.
                            } label: {
                                Text(Common.Texts.kCancelText)
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
