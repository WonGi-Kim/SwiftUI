//
//  PersonRow.swift
//  SwiftUI 4-1
//
//  Created by 김원기 on 2021/03/15.
//

import SwiftUI

struct PersonRow: View {
    var person: Person
    
    var body: some View {
        HStack{
            person.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(person.name)
            
            Spacer()
            
            if person.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.purple)
            }
        }
    }
}

struct PersonRow_Previews: PreviewProvider {
    static var students = ModelData().student
    static var previews: some View {
        Group{
            PersonRow(person: students[0])
            PersonRow(person: students[1])
        }
        .previewLayout(.fixed(width:300, height: 70))
    }
}
