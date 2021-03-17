//
//  ContentView.swift
//  SwiftUI 4-1
//
//  Created by 김원기 on 2021/03/15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        PersonList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
