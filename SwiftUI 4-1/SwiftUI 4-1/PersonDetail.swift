//
//  PersonDetail.swift
//  SwiftUI 4-1
//
//  Created by 김원기 on 2021/03/15.
//

import SwiftUI

struct PersonDetail: View {
    @EnvironmentObject var modelData: ModelData
    var person: Person
    
    var personIndex: Int{
        modelData.student.firstIndex(where: {$0.id == person.id})!
    }
    
    var body: some View {
        ScrollView {
            MapView(coordinate: person.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)

            CircleImage(image: person.image)
                .offset(y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                HStack {
                    Text(person.name)
                        .font(.title)
                    FavoriteButton(isSet: $modelData.student[personIndex].isFavorite)
                }

                HStack {
                    Text(person.state)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)

                Divider()

                Text("About \(person.name)")
                    .font(.title2)
                Text(person.description)
            }
            .padding()
        }
        .navigationTitle(person.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct PersonDetail_Previews: PreviewProvider {
    static let modelData = ModelData()

    static var previews: some View {
        PersonDetail(person: modelData.student[0])
            .environmentObject(modelData)
    }
}
