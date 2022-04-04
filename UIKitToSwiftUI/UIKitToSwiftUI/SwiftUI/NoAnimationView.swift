//
//  NoAnimationView.swift
//  UIKitToSwiftUI
//
//  Created by Mauro Monti on 04/04/22.
//

import SwiftUI

struct NoAnimationView: View {
    var body: some View {
        if let image = imageToDisplay {
            image
            .resizable()
            .clipShape(Circle())
        }
        else{
            Image("default")
                .resizable()
                .clipShape(Circle())
            }
    }
}

struct NoAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        NoAnimationView()
    }
}
