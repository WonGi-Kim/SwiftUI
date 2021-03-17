//
//  Person.swift
//  SwiftUI 4-1
//
//  Created by 김원기 on 2021/03/15.
//  이 파일은 하나의 사람을 표현합니다.

import Foundation
import SwiftUI
import CoreLocation

struct Person: Identifiable, Hashable, Codable {
    var id: Int
    var name: String
    var number: String
    var state: String
    var description: String
    var isFavorite: Bool
    
    private var imageName: String
        var image: Image {
            Image(imageName)
        }
    
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D{
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    struct Coordinates: Hashable,Codable {
        var latitude: Double
        var longitude: Double
    }
}
