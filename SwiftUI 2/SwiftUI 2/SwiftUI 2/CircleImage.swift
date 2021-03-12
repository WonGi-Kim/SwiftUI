//
//  CircleImage.swift
//  SwiftUI 2
//
//  Created by 김원기 on 2021/03/10.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("jieun")
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.purple, lineWidth: 3))
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/ )
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
