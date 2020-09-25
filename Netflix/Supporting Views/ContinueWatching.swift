//
//  ContinueWatching.swift
//  Netflix
//
//  Created by Omar Ibrahim on 9/2/20.
//  Copyright © 2020 Omar Ibrahim. All rights reserved.
//

import SwiftUI

struct ContinueWatching: View {
    
    var amountWatched:CGFloat
    var contentData:MainView
    var lastEp:String
    
    var body: some View {
        VStack(spacing: 0) {
            
            Button (action: {}) {
                ZStack {
                    
                    ZStack (alignment: .bottom) {
                        Image(contentData.filename)
                            .resizable()
                            .renderingMode(.original)
                            .frame(width: 116, height: 155)
                            .aspectRatio(contentMode: .fit)
                        
                        LinearGradient(gradient: Gradient(colors: [.white, .white, .black]), startPoint: .top, endPoint: .bottom)
                            .frame(width: 116, height: 155)
                            .blendMode(.multiply)
                        
                        Text(lastEp)
                            .foregroundColor(.white)
                            .font(.system(size: 15))
                            .padding(.bottom, 5)
                        
                    }
                    
                    PlayButton()
                }
            }
            ZStack (alignment: .top) {
                ZStack {
                    Rectangle()
                    .fill(Color("netflix-black"))
                    .frame(width: 116, height: 40)
                    
                    HStack {
                        Button(action: {}) {
                            Image(systemName: "info.circle")
                                .foregroundColor(Color("netflix-gray"))
                        }
                        Spacer()
                        Button(action: {}) {
                             Image(systemName: "ellipsis.circle")
                            .foregroundColor(Color("netflix-gray"))
                        }
                    }.padding(.horizontal, 5).frame(width: 116)
                    
                }
                    
                ZStack {
                    Rectangle()
                    .fill(Color("netflix-gray"))
                    .frame(width: 116, height: 3)
                    HStack {
                        Rectangle()
                            .fill(Color("netflix-red"))
                            .frame(width: 116 * self.amountWatched, height: 3)
                        Spacer()
                    }
                }
                
            }
            
            }.frame(width: 116).fixedSize()
    }
}

struct PlayButton: View {
    var body: some View {
        ZStack {
            Circle()
            .foregroundColor(.black)
            .opacity(0.5)
                .overlay(Circle().stroke(lineWidth: 1).foregroundColor(.white))
            .frame(width: 40, height: 40, alignment: .center)
            
            Image(systemName: "play.fill")
                .foregroundColor(.white)
                .padding(.leading, 4)
            
            
            
            
        }.fixedSize()
    }
}

struct ContinueWatching_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContinueWatching(amountWatched: 0.4, contentData: MainViewData[1], lastEp: "S3:E2")
        PlayButton()
        }.previewLayout(.fixed(width:130, height: 220))
    }
}
