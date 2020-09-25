//
//  ButtonView.swift
//  Netflix
//
//  Created by Omar Ibrahim on 9/2/20.
//  Copyright © 2020 Omar Ibrahim. All rights reserved.
//

import SwiftUI

struct ButtonView: View {
    
    var isPlay:Bool
    var playAction:String?
    var isOpaque:Bool
    var color:Color
    var textColor:Color
    var width:CGFloat
    var inputText:String?
    
    var body: some View {
        Group {
            if isPlay {
                Button (action:{})
                {
                    HStack {
                        Spacer()
                        Image(systemName: "play.fill")
                        Text("Play")
                            .font(.body)
                            .bold()
                        Spacer()
                    }
                        .padding([.top, .bottom], 5)
                    .frame(width: UIScreen.main.bounds.width * self.width)
                        .foregroundColor(self.textColor)
                        .background(self.color)
                }
            }
            else {
                    Text(self.inputText ?? "ERROR")
                        .font(.body)
                        .bold()
                        .padding(5)
                        .foregroundColor(self.textColor)
                        .background(self.color.opacity(self.isOpaque ? 1 : 0))
                        .border(self.textColor, width: self.isOpaque ? 0 : 2)
                
            }
        }.frame(width: 35, height: 30.5).fixedSize()
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(isPlay: false, playAction: nil, isOpaque: false, color: Color("netflix-gray"), textColor: Color("netflix-gray"), width: 0.9, inputText: "HD")
    }
}
