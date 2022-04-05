//
//  SwiftUIView.swift
//  UIKitToSwiftUI
//
//  Created by Mauro Monti on 01/04/22.
//

import SwiftUI

struct SwiftUIView: View {
    
//    var spinningAnimationOn :  Bool
//    var pulsingAnimationOn  :  Bool
    
    var body: some View {
        if spinningAnimationOn && pulsingAnimationOn {
            TwoAnimationsView()
        }
        else if spinningAnimationOn && !pulsingAnimationOn{
            SingleAnimationSpin()
        }
        else if !spinningAnimationOn && pulsingAnimationOn{
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
