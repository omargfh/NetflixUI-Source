//
//  SearchBar.swift
//  Netflix
//
//  Created by Omar Ibrahim on 9/22/20.
//  Copyright © 2020 Omar Ibrahim. All rights reserved.
//

import SwiftUI

struct SearchBar: View {
    var body: some View {
        ZStack(alignment: .center) {
            Rectangle()
                .frame(width: UIScreen.main.bounds.width - 10, height: 30)
                .foregroundColor(Color(red: 50/255, green: 50/255, blue: 50/255))
                .cornerRadius(7)
            
            HStack {
                Image("search")
            }
        }.frame(width: UIScreen.main.bounds.width - 10, height: 30)
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
    }
}
