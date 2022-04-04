//
//  SingleAnimationPulse.swift
//  UIKitToSwiftUI
//
//  Created by Mauro Monti on 04/04/22.
//

import SwiftUI

struct SingleAnimationPulse: View {
    
    @State private var pulsingAnimationAmount = 1.0
    
    var body: some View {
        if let image = imageToDisplay {
            image
                .resizable()
                .clipShape(Circle())
                .overlay(
                    Circle()
                        .stroke(.blue)
                        .scaleEffect(pulsingAnimationAmount)
                        .opacity(2-pulsingAnimationAmount)
                        .animation(.easeInOut(duration: 1.5).repeatForever(autoreverses: true), value: pulsingAnimationAmount)
                )
                .onAppear{pulsingAnimationAmount = 2}
        }
        else {
            Image("default")
                .resizable()
                .clipShape(Circle())
                .overlay(
                    Circle()
                        .stroke(.blue)
                        .scaleEffect(pulsingAnimationAmount)
                        .opacity(2-pulsingAnimationAmount)
                        .animation(.easeInOut(duration: 1.5).repeatForever(autoreverses: true), value: pulsingAnimationAmount)
                )
                .onAppear{pulsingAnimationAmount = 2}
        }
    }
}


struct SingleAnimationPulse_Previews: PreviewProvider {
    static var previews: some View {
        SingleAnimationPulse()
    }
}
