//
//  CircleImage.swift
//  SwiftUI 4-1
//
//  Created by 김원기 on 2021/03/15.
//  이 파일에서는 이미지를 원형 이미지로 변환하고 그림자를 표현합니다.

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay(Circle().stroke(Color.black, lineWidth: 4))
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("Hoon"))
    }
}
