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
import CSV

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
        
        let stream = InputStream(fileAtPath: "/Users/siddharth/Google Drive/Sophomore Year/Fall Quarter/CS117/SafeT/Crime_Data_from_2010_to_Present.csv")!
        let csv = try! CSVReader(stream: stream)
        var locationA:CLLocationCoordinate2D
        while let row = csv.next() {
//            print(row[3])
            var array = row[3].components(separatedBy: ", ")
//            print(array)
            var lat:Double
            var long:Double
            for element in array {
                element.replacingOccurrences(of: "(", with: "")
                element.replacingOccurrences(of: ")", with: "")
//                lat = array[0] as! Double
//                long = array[1] as! Double
            }
            print(array)
        }
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

