//
//  ViewController.swift
//  iCate
//
//  Created by Michael Doroff on 9/12/17.
//  Copyright © 2017 Michael Doroff. All rights reserved.
//

import UIKit
import CoreLocation


class ViewController: UIViewController {

    var locationManager: CLLocationManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        getLocationUpdate()

    
    }
    
    
    func getLocationUpdate() {
        // Create a location manager object
        self.locationManager = CLLocationManager()
        
        // Set the delegate
       
        
        // Request location authorization
        self.locationManager.requestWhenInUseAuthorization()
        
        print(locationManager.location?.coordinate.latitude)
        print(locationManager.location?.coordinate.longitude)
        
        // Start location updates
        self.locationManager.startUpdatingLocation()
    }
    
    
    func getQuickLocationUpdate() {
        // Request location authorization
        self.locationManager.requestWhenInUseAuthorization()
        
        // Request a location update
        print(self.locationManager.requestLocation())
        // Note: requestLocation may timeout and produce an error if authorization has not yet been granted by the user
    }

    


}

