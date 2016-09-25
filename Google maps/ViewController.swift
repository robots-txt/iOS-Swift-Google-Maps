//
//  ViewController.swift
//  Google maps
//
//  Created by Sanjay Ramanathan on 24/09/2016.
//  Copyright © 2016 Sanjay Ramanathan. All rights reserved.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let camera = GMSCameraPosition.cameraWithLatitude(-33.867486899999996, longitude: 151.2069902, zoom: 15)
        let mapView = GMSMapView.mapWithFrame(self.view.bounds, camera: camera)
        mapView.myLocationEnabled = true
        
        self.view.addSubview(mapView);
        
        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: -33.867486899999996, longitude: 151.2069902)
        marker.title = "Sydney"
        marker.snippet = "Australia"
        marker.map = mapView
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

