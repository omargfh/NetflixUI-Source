//
//  PreviewItem.swift
//  Netflix
//
//  Created by Omar Ibrahim on 9/2/20.
//  Copyright © 2020 Omar Ibrahim. All rights reserved.
//

import SwiftUI

struct PreviewItemData {
    var name:String
    var text:String
    
    init(name:String, text:String) {
        self.name = name
        self.text = text
    }
}

struct PreviewItem: View {
    
    var id:Int
    var data:[PreviewItemData] = [
    .init(name: "plus", text: "My List"),
    .init(name: "info.circle", text: "Info")
    ]
    
    var body: some View {
        VStack(spacing: 1) {
            Spacer()
            Button (action: {}) {
                Image(systemName: data[id].name) }
            Text(data[id].text)
            Spacer()
            
        }
            .frame(width: 55, height: 30.5)
    }
}

struct PreviewItem_Previews: PreviewProvider {
    static var previews: some View {
        PreviewItem(id: 0)
    }
}
