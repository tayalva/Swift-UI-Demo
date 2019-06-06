//
//  MapView.swift
//  SwiftUIDemo
//
//  Created by Taylor Smith on 6/5/19.
//  Copyright © 2019 Taylor Smith. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView : UIViewRepresentable {
   
    func makeUIView(context: UIViewRepresentableContext<MapView>) -> MKMapView {
        MKMapView()
    
    }
    
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
        let coordinate = CLLocationCoordinate2D(latitude: 34.011286, longitude: -116.166868)
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
        uiView.isUserInteractionEnabled = false 
    
        
    }
    
}

#if DEBUG
struct MapView_Previews : PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
#endif
