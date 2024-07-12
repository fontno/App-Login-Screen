//
//  LogoView.swift
//  LoginScreen
//
//  Created by Brian Fontenot on 7/12/24.
//
import SwiftUI

struct LogoView: View {
    var body: some View {
        VStack {
            Image(uiImage: UIImage.bundle(name: "grow-local-symbol", ext: "png"))
                .resizable()
                .scaledToFit()
                
        }
        .padding()
    }
}

