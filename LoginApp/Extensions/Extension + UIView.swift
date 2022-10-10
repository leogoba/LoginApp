//
//  Extension + UIView.swift
//  LoginApp
//
//  Created by leogoba on 10.10.2022.
//

import UIKit

// MARK: Добавление градиента
extension UIView {
    func addVerticalGradientLayer() {
        let firstColor = UIColor(
            red: 210/255,
            green: 109/255,
            blue: 128/255,
            alpha: 1
        )
        
        let secondColor = UIColor(
            red: 100/255,
            green: 150/255,
            blue: 200/255,
            alpha: 1
        )
        
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [firstColor.cgColor, secondColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
