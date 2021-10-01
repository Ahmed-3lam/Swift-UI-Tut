//
//  MapView.swift
//  first
//
//  Created by AhmedAllam on 30/09/2021.
//

import SwiftUI
import MapKit
struct MapView: View {
    var coordonate:CLLocationCoordinate2D
    @State 	private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)

    )
    
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordonate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}
