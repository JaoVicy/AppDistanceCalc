//
//  GeoPoint.swift
//  AppDistanceCalc
//
//  Created by João Víctor Benetti Filipim on 28/06/25.
//

import Foundation
import CoreLocation

class GeoPoint {
    
    let latitude: Double
    let longitude: Double
    
    init(latitude: Double, longitude: Double) {
        self.latitude = latitude
        self.longitude = longitude
    }
    
    var location: CLLocation {
        return CLLocation(latitude: latitude, longitude: longitude)
    }
    
    var description: String {
        return "(\(latitude), \(longitude))"
    }
}
