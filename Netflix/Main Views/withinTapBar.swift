//
//  withinTapBar.swift
//  Netflix
//
//  Created by Omar Ibrahim on 9/1/20.
//  Copyright © 2020 Omar Ibrahim. All rights reserved.
//

import SwiftUI

struct withinTapBar: View {
    // Tap Bar
    @State private var index:Int = 0
    @State private var isActive:Array<Bool> = [true, false, false, false, false]
    
    // Hide Navigation Bar
    @State private var initialOffset: CGFloat?
    @State private var offset: CGFloat?
    @State var viewIsShown:Bool = true
    
    var body: some View {
        ZStack {
            // Background Color
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                // Navigation Bar
                ZStack(alignment: .top) {
                    ScrollView {
                        // View House
                        if self.index == 0 {
                            FeaturedView().padding(.bottom, 5).frame(width: UIScreen.main.bounds.width)
                            
                            HStack {
                                Text("Previews")
                                    .foregroundColor(.white)
                                    .bold()
                                Spacer()
                            }.padding(.horizontal).frame(width: UIScreen.main.bounds.width)
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 15) {
                                    ForEach(0..<MainViewData.count) {input in
                                        PreviewItemSmall(contentData: MainViewData[input])
                                    }.frame(height: 120)
                                }.padding([.horizontal, .bottom])
                            }
                            
                            HStack {
                                Text("Continue Watching")
                                    .foregroundColor(.white)
                                    .bold()
                                Spacer()
                            }.padding(.horizontal).frame(width: UIScreen.main.bounds.width)
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 15) {
                                    ForEach(0..<MainViewData.count) {input in
                                        ContinueWatching(amountWatched: CGFloat(Double.random(in: 0...1)), contentData: MainViewData[input], lastEp: "S2:E3")
                                    }
                                }.padding([.horizontal, .bottom])
                            }
                            
                            HStack {
                                Text("Trending TV Shows")
                                    .foregroundColor(.white)
                                    .bold()
                                Spacer()
                            }.padding(.horizontal).frame(width: UIScreen.main.bounds.width)
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 15) {
                                    ForEach(0..<MainViewData.count) {input in
                                        if MainViewData[input].isShow {
                                            SelectAndWatch( contentData: MainViewData[input])
                                        }
                                    }
                                }.padding([.horizontal, .bottom])
                            }
                            
                            HStack {
                                Text("Brand New Movies")
                                    .foregroundColor(.white)
                                    .bold()
                                Spacer()
                            }.padding(.horizontal).frame(width: UIScreen.main.bounds.width)
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 15) {
                                    ForEach(0..<MainViewData.count) {input in
                                        if !MainViewData[input].isShow {
                                            SelectAndWatch( contentData: MainViewData[input])
                                        }
                                    }
                                }.padding([.horizontal, .bottom])
                            }
                            
                        }
                            
                        else if self.index == 1 {
                            Color.blue.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
                        }
                        else if self.index == 2 {
                            Color.gray.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
                        }
                        else if self.index == 3 {
                            Color.red.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
                        }
                        else if self.index == 4 {
                            Color.green.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
                        }
                    }.edgesIgnoringSafeArea(.all).frame(width: UIScreen.main.bounds.width)
                    NavigationBar()
                }
                /*        VStack {
                 NavigationBar().padding([.horizontal])
                 
                 ScrollView {
                 
                 GeometryReader { geometry in
                 Color.clear.preference(key: OffsetKey.self, value: geometry.frame(in: .global).minY)
                 .frame(height: 0)
                 }
                 
                 // View House
                 if self.index == 0 {
                 FeaturedView().edgesIgnoringSafeArea(.all)
                 }
                 else if self.index == 1 {
                 Color.blue
                 }
                 else if self.index == 2 {
                 Color.gray
                 }
                 else if self.index == 3 {
                 Color.white
                 }
                 else if self.index == 4 {
                 Color.green
                 }
                 
                 }
                 }.onPreferenceChange(OffsetKey.self) {
                 if self.initialOffset == nil || self.initialOffset == 0 {
                 self.initialOffset = $0
                 }
                 
                 self.offset = $0
                 
                 guard let initialOffset = self.initialOffset,
                 let offset = self.offset else {
                 return
                 }
                 
                 
                 if(initialOffset > offset){
                 self.viewIsShown = false
                 print("hide")
                 } else {
                 self.viewIsShown = true
                 print("show")
                 }
                 
                 
                 
                 } */
                
                
                Spacer()
                // Bar Items
                ZStack {
                    Color.black
                    HStack {
                        ForEach(0..<5) {input in
                            Button(action: {
                                self.index = input
                                self.isActive = [false, false, false, false, false]
                                self.isActive[input] = true
                            }){
                                TabBarItem(id: input, isActive: self.isActive[input])
                            }
                        }
                    }
                    .fixedSize()
                    .frame(width: UIScreen.main.bounds.width)
                }
                .fixedSize()
            }.frame(width: UIScreen.main.bounds.width)
        }
    }
}

struct OffsetKey: PreferenceKey {
    static let defaultValue: CGFloat? = nil
    static func reduce(value: inout CGFloat?,
                       nextValue: () -> CGFloat?) {
        value = value ?? nextValue()
    }
}

struct withinTapBar_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            withinTapBar().previewDevice(PreviewDevice(rawValue: "iPhone 11"))
            withinTapBar().previewDevice(PreviewDevice(rawValue: "iPhone 8"))
        }
    }
}
