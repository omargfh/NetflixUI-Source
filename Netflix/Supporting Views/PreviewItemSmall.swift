//
//  PreviewItemSmall.swift
//  Netflix
//
//  Created by Omar Ibrahim on 9/2/20.
//  Copyright © 2020 Omar Ibrahim. All rights reserved.
//

import SwiftUI

struct PreviewItemSmall: View {
    
    @State private var frame:Array<CGFloat?> = [90, 50]
    var contentData:MainView
    var possibleColors = [Color(.red), Color(.green), Color(.yellow), Color(.blue)]
    
    var body: some View {
        Group {
            if contentData.isPreview {
                ZStack(alignment: .bottom) {
                    
                    Circle()
                            .frame(width: 100, height: 100)
                            .overlay(Circle().stroke(lineWidth: 3))
                            .foregroundColor(.red)
                        
                    VStack(spacing: 0) {
                            HStack(spacing: 0) {
                    
                                    Spacer()
                                
                                    Rectangle()
                                        .frame(width: self.frame[0], height: self.frame[1])
                                        .overlay(Rectangle().stroke(lineWidth: 3))
                                        .foregroundColor(.black)
                                        .onAppear(perform: {self.frame = [0, 50]})
                                        .animation(.easeOut(duration: 2.5))
                                
                            }
                        Spacer()
                    }
                    
                    Image("\(contentData.filename)preview")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                    
                    Image("\(contentData.filename)logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .offset(x: 0, y: 10)
                        .frame(width: 100, height: 40)
                    
                    
                    
                    
                }.frame(width: 100, height: 100)
            }
        }
    }
}

struct PreviewItemSmall_Previews: PreviewProvider {
    static var previews: some View {
        PreviewItemSmall(contentData: MainViewData[6])
    }
}
