//
//  AppDistanceCalcTests.swift
//  AppDistanceCalcTests
//
//  Created by João Víctor Benetti Filipim on 22/06/25.
//

import Testing
import XCTest

@testable import AppDistanceCalc

class AppDistanceCalcTests: XCTestCase {

    func testDistanceBetweenTwoPoints() {
            let sp = GeoPoint(latitude: -23.5505, longitude: -46.6333) // São Paulo
            let rj = GeoPoint(latitude: -22.9068, longitude: -43.1729) // Rio de Janeiro
            
            let distance = DistanceCalculator.calculateDistance(from: sp, to: rj)
            // Distância aproximada em km
            XCTAssertEqual(distance, 357.6, accuracy: 5.0)
        }
        
        func testDistancesFromReferencePoint() {
            let points = [
                GeoPoint(latitude: -23.5505, longitude: -46.6333), // São Paulo
                GeoPoint(latitude: -22.9068, longitude: -43.1729)  // Rio de Janeiro
            ]
            let calculator = DistanceCalculator()
            points.forEach { calculator.addPoint($0) }
            
            let reference = GeoPoint(latitude: -15.8267, longitude: -47.9218) // Brasília
            let distances = calculator.calculateDistances(from: reference)
            
            XCTAssertEqual(distances.count, 2)
            // As distâncias reais podem variar um pouco por arredondamento e modelo da Terra
            XCTAssertEqual(distances[0], 865.6, accuracy: 5.0) // Aproximadamente Brasília-SP
            XCTAssertEqual(distances[1], 928.8, accuracy: 5.0) // Aproximadamente Brasília-RJ
            print("A distância de Brasília a São Paulo é: ", distances[0])
            print("A distância de Brasília a Rio de Janeiro é: ", distances[1])
    }

}
