//
//  LandmarkList.swift
//  SwiftUI 3
//
//  Created by 김원기 on 2021/03/12.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View{
        NavigationView{
            List(landmarks) { landmark in
                NavigationLink(destination: LandmarkDetail()){
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
