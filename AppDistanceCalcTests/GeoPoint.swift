//
//  GeoPoint.swift
//  AppDistanceCalcTests
//
//  Created by João Víctor Benetti Filipim on 23/06/25.
//

import Testing
import Foundation
import CoreLocation

struct GeoPoint {
    let latitude: Double
    let longitude: Double
        
    func location() -> CLLocation {
            return CLLocation(latitude: latitude, longitude: longitude)
    }

}
