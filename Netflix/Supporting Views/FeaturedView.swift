//
//  FeaturedView.swift
//  Netflix
//
//  Created by Omar Ibrahim on 9/1/20.
//  Copyright © 2020 Omar Ibrahim. All rights reserved.
//

import SwiftUI

struct FeaturedView: View {
    var body: some View {
        VStack {
            ZStack(alignment: .top) {
                LinearGradient(gradient: Gradient(colors: [.white, .black]), startPoint: .top, endPoint: .bottom)
                    .aspectRatio(1, contentMode: .fit)
                    .frame(width: UIScreen.main.bounds.width)
                Image("skyscraperpreview")
                    .resizable()
                    .aspectRatio(1, contentMode: .fit)
                    .blendMode(.multiply)
                    .frame(width: UIScreen.main.bounds.width)
            }
            VStack {
                Image("skyscraperlogo")
                    .resizable()
                    .padding(.horizontal)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.main.bounds.width)
                Text("Forceful â€¢ Suspenseful â€¢ Exciting â€¢ Action Thriller").font(.system(size: 15))
                    .padding(.horizontal)
                    .lineLimit(1)
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width)
                HStack {
                    PreviewItem(id: 0)
                    Spacer()
                    ButtonView(isPlay: true, playAction: nil, isOpaque: true, color: .white, textColor: .black, width: 0.5, inputText: nil)
                    Spacer()
                    PreviewItem(id: 1)
                }.padding(.horizontal, 20).frame(width: UIScreen.main.bounds.width).foregroundColor(.white).offset(x: 0, y: 10)
            }.offset(x: 0, y: -30)
        }
    }
}

struct FeaturedView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedView().previewDevice(PreviewDevice(rawValue: "iPhone 11"))
    }
}
