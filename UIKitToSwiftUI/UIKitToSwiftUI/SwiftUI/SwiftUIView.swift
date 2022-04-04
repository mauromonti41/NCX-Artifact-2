//
//  SwiftUIView.swift
//  UIKitToSwiftUI
//
//  Created by Mauro Monti on 01/04/22.
//

import SwiftUI

struct SwiftUIView: View {
    
    @StateObject var sample = Sample()
    
    var body: some View {
        if sample.spinningAnimationOn && sample.pulsingAnimationOn {
            TwoAnimationsView()
        }
        else if sample.spinningAnimationOn && !sample.pulsingAnimationOn{
            SingleAnimationSpin()
        }
        else if !sample.spinningAnimationOn && sample.pulsingAnimationOn{
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
