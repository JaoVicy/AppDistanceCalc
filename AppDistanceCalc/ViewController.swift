//
//  ViewController.swift
//  AppDistanceCalc
//
//  Created by João Víctor Benetti Filipim on 22/06/25.
//

import UIKit
import CoreLocation

class ViewController: UIViewController {
    
    @IBOutlet weak var latitudeInput: UITextField!
    @IBOutlet weak var longitudeInput: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    
    var referencePoint: CLLocation?
    var referenceText: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func submitButtonTapped(_ sender: UIButton) {
        
        if let latitudeText = latitudeInput.text, let longitudeText = longitudeInput.text {
            
            guard let latText = latitudeInput.text,
                  let longText = longitudeInput.text,
                  let lat = Double(latText),
                  let lon = Double(longText)
            else {
                resultLabel.text = "Insira Valores válidos!"
                return
            }
            let newPoint = CLLocation(latitude: lat, longitude: lon)
            let coordText = "(\(lat), \(lon))"
            
            if referencePoint == nil {
                // Primeiro ponto vira referência
                referencePoint = newPoint
                referenceText = coordText
                resultLabel.text = "Ponto de referência definido: \(coordText)"
            } else {
                // Calcula a distância até o ponto de referência
                let distance = referencePoint!.distance(from: newPoint) / 1000.0 // em km
                let distanceStr = String(format: "%.2f", distance)
                resultLabel.text = """
                        Ponto de referência: \(referenceText)
                        Novo ponto: \(coordText)
                        Distância: \(distanceStr) km
                        """
            }
            
            // Limpa os campos para o próximo ponto
            latitudeInput.text = ""
            longitudeInput.text = ""
        }
    }
}
