//
//  DistanceCalculator.swift
//  AppDistanceCalcTests
//
//  Created by João Víctor Benetti Filipim on 23/06/25.
//

import Testing
import Foundation
import CoreLocation

class DistanceCalculator {
    private var points: [GeoPoint] = []
        
        func addPoint(_ point: GeoPoint) {
            points.append(point)
        }
        
        // Calcula distâncias de todos os pontos a partir de um ponto de referência
        func calculateDistances(from reference: GeoPoint) -> [Double] {
            let refLocation = reference.location()
            return points.map { $0.location().distance(from: refLocation) / 1000.0 } // em quilômetros
        }
        
        // Calcula a distância entre dois pontos
        static func calculateDistance(from point1: GeoPoint, to point2: GeoPoint) -> Double {
            return point1.location().distance(from: point2.location()) / 1000.0 // em quilômetros
        }
}
