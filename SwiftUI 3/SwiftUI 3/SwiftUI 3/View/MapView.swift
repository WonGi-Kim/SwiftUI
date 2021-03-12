//
//  MapView.swift
//  SwiftUI 3
//
//  Created by 김원기 on 2021/03/12.
//

import SwiftUI
import MapKit

struct MapView: View{
    var coordinate: CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion(
        center:CLLocationCoordinate2D(latitude: 34.011_286, longitude: -166.166_868),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )
    var body: some View {
        Map(coordinateRegion: $region)
    }
}


struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}

