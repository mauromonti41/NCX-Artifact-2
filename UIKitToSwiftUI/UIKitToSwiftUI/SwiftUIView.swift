//
//  SwiftUIView.swift
//  UIKitToSwiftUI
//
//  Created by Mauro Monti on 01/04/22.
//

import SwiftUI

struct SwiftUIView: View {
    
    @State var image : Image?
    
    var body: some View {
        Image("default")
//            .clipShape(Circle())
    }
}

struct SwiftUIView_Previews:
    PreviewProvider {
    @State static var imagePreview : Image = Image("default")
    static var previews: some View {
        SwiftUIView(image: imagePreview)
    }
}
