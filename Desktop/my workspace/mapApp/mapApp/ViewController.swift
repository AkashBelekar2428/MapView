//
//  ViewController.swift
//  mapApp
//
//  Created by Reapmind on 13/02/23.
//

import UIKit
import GoogleMaps
import GooglePlaces

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        latLog(Lattitude:18.5204 , Logitude: 73.8567)
    }
    private func latLog(Lattitude:Double,Logitude:Double){
        // Do any additional setup after loading the view.
      let camera = GMSCameraPosition.camera(withLatitude: Lattitude, longitude: Logitude, zoom: 10.0)
      let mapView = GMSMapView.map(withFrame: self.view.frame, camera: camera)
      self.view.addSubview(mapView)

      // Creates a marker in the center of the map.
      let marker = GMSMarker()
      marker.position = CLLocationCoordinate2D(latitude: Lattitude, longitude: Logitude)
      marker.title = "Kolhapur"
      marker.snippet = "India"
      marker.map = mapView
    }


}

