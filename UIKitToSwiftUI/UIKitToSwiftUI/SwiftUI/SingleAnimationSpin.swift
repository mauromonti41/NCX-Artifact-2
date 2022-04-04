//
//  SingleAnimationSpin.swift
//  UIKitToSwiftUI
//
//  Created by Mauro Monti on 04/04/22.
//

import SwiftUI

struct SingleAnimationSpin: View {
    
    @State private var spinningAnimationAmount = 0.0
    
    var body: some View {
        if let image = imageToDisplay {
            Button(action: {withAnimation{spinningAnimationAmount += 360}}){
                image
                    .resizable()
            }
            .clipShape(Circle())
            .rotation3DEffect(.degrees(spinningAnimationAmount), axis: (x:0 , y:1, z:0))
        }
        else {
            Button(action: {withAnimation{spinningAnimationAmount += 360}}){
                Image("default")
                    .resizable()
            }
            .clipShape(Circle())
            .rotation3DEffect(.degrees(spinningAnimationAmount), axis: (x:0 , y:1, z:0))
        }
    }
}


struct SingleAnimationSpin_Previews: PreviewProvider {
    static var previews: some View {
        SingleAnimationSpin()
    }
}
