//
//  ContentView.swift
//  SwiftUI 2
//
//  Created by 김원기 on 2021/03/10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

            VStack{
                SecondImage()
                    .frame(height:250)
                    .ignoresSafeArea(edges: .top)
                
                CircleImage()
                    .offset(y: -180)
                    .padding(.bottom, -180)
            
                HStack{
                    MyText()
                    
                    MySecondText()
                }
        
            }
    }
}

struct MyText: View{
    var body: some View{
        Text("SwiftUI 2")
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)

            
    }
}

struct MySecondText: View{
    var body: some View{
        HStack{
            VStack(alignment:.trailing){
                Text("Lee Ji Eun")
                    .font(.title2)
            
                Text("I U")
                    .font(.title2)
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
