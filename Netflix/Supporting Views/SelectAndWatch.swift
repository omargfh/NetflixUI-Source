//
//  SelectAndWatch.swift
//  Netflix
//
//  Created by Omar Ibrahim on 9/2/20.
//  Copyright © 2020 Omar Ibrahim. All rights reserved.
//

import SwiftUI

struct SelectAndWatch: View {
    
    var contentData:MainView
    var body: some View {
        Button(action: {}) {
            Image(contentData.filename)
                .resizable()
                .renderingMode(.original)
                .frame(width: 116, height: 180)
                .aspectRatio(contentMode: .fit)
        }.frame(width: 116, height: 180)
    }
}

struct SelectAndWatch_Previews: PreviewProvider {
    static var previews: some View {
        SelectAndWatch(contentData: MainViewData[1])
    }
}
