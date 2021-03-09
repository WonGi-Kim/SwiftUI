//
//  ContentView.swift
//  SwiftUI 1
//
//  Created by 김원기 on 2021/03/09.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        MyHelloView()
        
            .padding()
    }
}

struct MyHelloView: View {
    var body: some View{
        
        VStack(alignment: .center){
            //alignment 정렬 기준
            Text("안녕하세요")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .font(.title)
                .foregroundColor(.purple)
                
            HStack{
                Text("이 앱은 연습용 앱입니다.")
                    .font(.subheadline)
                    .foregroundColor(.purple)
                
                //Spacer()
                //HStack 사이 간격 벌리기
                
                Text("무~ 야호~")
                    .font(.subheadline)
                    .foregroundColor(.purple)
            }
                
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
