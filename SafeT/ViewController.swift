//
//  ViewController.swift
//  SafeT
//
//  Created by Siddharth Pandiya on 11/4/18.
//  Copyright © 2018 Siddharth Pandiya. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let locationManager = CLLocationManager()
        locationManager.delegate = self;
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestAlwaysAuthorization()
        locationManager.startUpdatingLocation()
        let locValue:CLLocationCoordinate2D = locationManager.location!.coordinate
        print("locations = \(locValue.latitude) \(locValue.longitude)")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let locValue:CLLocationCoordinate2D = manager.location!.coordinate
        print("locations = \(locValue.latitude) \(locValue.longitude)")
    }

}

