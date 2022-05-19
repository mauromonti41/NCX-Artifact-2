//
//  SwiftUIView.swift
//  UIKitToSwiftUI
//
//  Created by Mauro Monti on 01/04/22.
//

import SwiftUI

struct SwiftUIView: View {
    
    @ObservedObject var delegate : SwiftUIDelegate
    
    var body: some View {
        if delegate.spinningAnimationOn && delegate.pulsingAnimationOn {
            TwoAnimationsView()
        }
        else if delegate.spinningAnimationOn && !delegate.pulsingAnimationOn{
            SingleAnimationSpin()
        }
        else if !delegate.spinningAnimationOn && delegate.pulsingAnimationOn{
            SingleAnimationPulse()
        }
        else{
            NoAnimationView()
        }
    }
}

//struct SwiftUIView_Previews:
//    PreviewProvider {
//    @State static var imagePreview : Image = Image("default")
//    static var previews: some View {
//        SwiftUIView(image: imagePreview)
//    }
//}
