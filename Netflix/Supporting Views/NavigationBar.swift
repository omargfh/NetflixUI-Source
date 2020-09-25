//
//  NavigationBar.swift
//  Netflix
//
//  Created by Omar Ibrahim on 9/1/20.
//  Copyright © 2020 Omar Ibrahim. All rights reserved.
//

import SwiftUI

struct NavigationBar: View {
    
    var text:Array<String> = ["TV Show", "Movies", "List"]
    var body: some View {
        HStack {
            Image("n-logo")
                .resizable()
                .frame(width: 25, height: 45)
            Spacer()
            ForEach(0..<self.text.count) { input in
                Button(action: {}) {
                    Text(self.text[input])
                        .foregroundColor(.white)
                }
                Spacer()
            }
            }.padding()
            .frame(width: UIScreen.main.bounds.width)
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
          Group {
                        NavigationBar().previewDevice(PreviewDevice(rawValue: "iPhone 11"))
                        NavigationBar().previewDevice(PreviewDevice(rawValue: "iPhone 8"))
                    }
    }
}
