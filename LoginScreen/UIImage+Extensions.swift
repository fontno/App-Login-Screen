//
//  UIImage+Extensions.swift
//  LoginScreen
//
//  Created by Brian Fontenot on 7/12/24.
//

import UIKit

extension UIImage {
    static func bundle(name: String, ext: String) -> UIImage {
        let path = Bundle.main.path(forResource: name, ofType: ext)!
        return UIImage(contentsOfFile: path)!
    }
}
