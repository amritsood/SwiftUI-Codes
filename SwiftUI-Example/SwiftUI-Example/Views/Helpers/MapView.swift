//
//  MapView.swift
//  SwiftUI-Example
//
//  Created by user on 07/06/22.
//

import SwiftUI
import MapKit
import CoreLocation

struct MapView: View {
    
    var coordinate: CLLocationCoordinate2D
    
    @State private var region = MKCoordinateRegion()
    
    var body: some View {
        Map(coordinateRegion: $region).onAppear{
            setRegion(coordinate: coordinate)
        }
    }
    
    private func setRegion(coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

struct MapView_Previews: PreviewProvider {
    
    static var previews: some View {
        let coordinate = CLLocationCoordinate2D(latitude: 30.900965, longitude: 75.857277)
        MapView(coordinate: coordinate)
    }
}
