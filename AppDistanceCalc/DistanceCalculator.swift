//
//  DistanceCalculator.swift
//  AppDistanceCalc
//
//  Created by João Víctor Benetti Filipim on 28/06/25.
//

import Foundation

class DistanceCalculator {
    
    static func calculaDistancia(from pointA: GeoPoint, to pointB: GeoPoint) -> Double {
        let distanceInMeters = pointA.location.distance(from: pointB.location)
                return distanceInMeters / 1000.0
    }
    
}
