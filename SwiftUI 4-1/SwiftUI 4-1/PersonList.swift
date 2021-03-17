//
//  PersonList.swift
//  SwiftUI 4-1
//
//  Created by 김원기 on 2021/03/15.
//

import SwiftUI

struct PersonList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filteredPerson: [Person] {
        modelData.student.filter { Person in
            (!showFavoritesOnly || Person.isFavorite)
        }
    }
    
    var body: some View{
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites Only")
                }
                
                ForEach(filteredPerson) { person in
                    NavigationLink(destination: PersonDetail(person: person)) {
                        PersonRow(person: person)
                    }
                }
            .navigationTitle("Students")
        }
    }
}

struct PersonList_Preview: PreviewProvider {
    static var previews: some View{
        PersonList()
            .environmentObject(ModelData())
    }
}
}
