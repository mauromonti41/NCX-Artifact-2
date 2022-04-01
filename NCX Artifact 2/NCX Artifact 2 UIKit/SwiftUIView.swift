//
//  SwiftUIView.swift
//  NCX Artifact 2 UIKit
//
//  Created by Mauro Monti on 01/04/22.
//

import SwiftUI

struct SwiftUIView: View {
    
    @State var image : Image?
    
    var body: some View {
        image ?? Image("default")
            .clipShape(Circle()) as! Image
    }
}

struct SwiftUIView_Previews:
    PreviewProvider {
    @State static var imagePreview : Image = Image("default")
    static var previews: some View {
        SwiftUIView(image: imagePreview)
    }
}
