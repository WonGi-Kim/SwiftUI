//
//  SwiftUI_4_1App.swift
//  SwiftUI 4-1
//
//  Created by 김원기 on 2021/03/15.
//

import SwiftUI

@main
struct SwiftUI_4_1App: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
