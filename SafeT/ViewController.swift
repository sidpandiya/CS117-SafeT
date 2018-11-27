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
    

    @IBOutlet weak var map: MKMapView!
    var locationManager: CLLocationManager!
    private var currentLocation: CLLocation?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.map.showsUserLocation = true;
        // Do any additional setup after loading the view, typically from a nib.
        if (CLLocationManager.locationServicesEnabled()){
            let locationManager = CLLocationManager()
            locationManager.delegate = self;
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.requestAlwaysAuthorization()
            locationManager.startUpdatingLocation()
            let locValue:CLLocationCoordinate2D = locationManager.location!.coordinate
            print("locations = \(locValue.latitude) \(locValue.longitude)")
        }
        
        // Basic CSV Parsing Code
        
//        let stream = InputStream(fileAtPath: "/Users/siddharth/Google Drive/Sophomore Year/Fall Quarter/CS117/SafeT/Crime_Data_from_2010_to_Present.csv")!
//        let csv = try! CSVReader(stream: stream)
//        var locationA:CLLocationCoordinate2D
//        while let row = csv.next() {
//            //            print(row[3])
//            var array = row[3].components(separatedBy: ", ")
//            //            print(array)
//            var lat:Double
//            var long:Double
//            for element in array {
//                element.replacingOccurrences(of: "(", with: "")
//                element.replacingOccurrences(of: ")", with: "")
//                //                lat = array[0] as! Double
//                //                long = array[1] as! Double
//            }
//            print(array)
//        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) { // Centers the map to the user location
//        let locValue:CLLocationCoordinate2D = manager.location!.coordinate
//        print("locations = \(locValue.latitude) \(locValue.longitude)")
//        if let location = locations.last{
//            let center = CLLocationCoordinate2D(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
//            let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
//            self.map.setRegion(region, animated: true)
//        }
//        defer { currentLocation = locations.last }
//
//        if currentLocation == nil {
//            // Zoom to user location
//            if let userLocation = locations.last {
//                let viewRegion = MKCoordinateRegionMakeWithDistance(userLocation.coordinate, 2000, 2000)
//                map.setRegion(viewRegion, animated: false)
//            }
//        }
//    }
    
}

