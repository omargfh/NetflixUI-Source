//
//  TabBarItem.swift
//  Netflix
//
//  Created by Omar Ibrahim on 9/1/20.
//  Copyright © 2020 Omar Ibrahim. All rights reserved.
//

import SwiftUI

struct TabBarItemData {
    var image:String
    var name:String
    
    init(image:String, name:String) {
        self.image = image
        self.name = name
    }
}

struct TabBarItem: View {
    
    var id:Int
    var isActive:Bool
    
    var item:[TabBarItemData] = [
        .init(image: "home", name: "Home"),
        .init(image: "search", name: "Search"),
        .init(image: "soon", name: "Coming Soon"),
        .init(image: "downloads", name: "Downloads"),
        .init(image: "more", name: "More")
    ]
    
    var body: some View {
        VStack {
            Image(item[id].image)
                .renderingMode(.template)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 25, height: 25)
            Text(item[id].name)
                .font(.system(size: 10))
            }
        .foregroundColor(isActive ? .white : Color(red: 97/255, green: 97/255, blue:97/255))
        .frame(width: 70, height: 50)
        .fixedSize()
    }
}

struct TabBarItem_Previews: PreviewProvider {
    static var previews: some View {
        TabBarItem(id: 0, isActive: false).frame(width: 62, height: 57)
    }
}
