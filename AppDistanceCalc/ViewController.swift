//
//  ViewController.swift
//  AppDistanceCalc
//
//  Created by João Víctor Benetti Filipim on 22/06/25.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var latitudeInput: UITextField!
    @IBOutlet weak var longitudeInput: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    
    var referencePoint: GeoPoint?
    var referenceText: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configuraLayout()
    }
    
    @IBAction func submitButtonTapped(_ sender: UIButton) {
        guard let latText = latitudeInput.text,
              let lonText = longitudeInput.text,
              let lat = Double(latText),
              let lon = Double(lonText)
        else {
            resultLabel.text = "Insira Valores válidos!"
            return
        }
        
        let newPoint = GeoPoint(latitude: lat, longitude: lon)
        let coordText = newPoint.description
        
        if referencePoint == nil {
            // Primeiro ponto vira referência
            referencePoint = newPoint
            referenceText = coordText
            resultLabel.text = "Ponto de referência definido: \(coordText)"
        } else {
            // Calcula a distância até o ponto de referência usando DistanceCalculator
            guard let refPoint = referencePoint else { return }
            let distance = DistanceCalculator.calculaDistancia(from: refPoint, to: newPoint)
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
    
    //MARK: - configuraLayout
    func configuraLayout() {
        // Botão:
        submitButton.layer.cornerRadius = 8
        
        // Label:
        
        resultLabel.layer.borderColor = UIColor.white.cgColor
        resultLabel.layer.borderWidth = 2
        resultLabel.layer.cornerRadius = 8
        resultLabel.layer.masksToBounds = true
    }
}
