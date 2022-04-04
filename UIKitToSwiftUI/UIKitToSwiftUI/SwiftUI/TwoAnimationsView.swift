//
//  TwoAnimationsView.swift
//  UIKitToSwiftUI
//
//  Created by Mauro Monti on 04/04/22.
//

import SwiftUI

struct TwoAnimationsView: View {
    
    @State private var spinningAnimationAmount = 0.0
    @State private var pulsingAnimationAmount = 1.0
    
    var body: some View {
        if let image = imageToDisplay {
            Button(action: {withAnimation{spinningAnimationAmount += 360}}){
            image
            .resizable()
            }
            .clipShape(Circle())
            .rotation3DEffect(.degrees(spinningAnimationAmount), axis: (x:0 , y:1, z:0))
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
            Button(action: {withAnimation{spinningAnimationAmount += 360}}){
            Image("default")
                .resizable()
            }
            .clipShape(Circle())
            .rotation3DEffect(.degrees(spinningAnimationAmount), axis: (x:0 , y:1, z:0))
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

struct TwoAnimationsView_Previews: PreviewProvider {
    static var previews: some View {
        TwoAnimationsView()
    }
}
