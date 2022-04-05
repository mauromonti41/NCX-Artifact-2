//
//  Data.swift
//  UIKitToSwiftUI
//
//  Created by Mauro Monti on 04/04/22.
//

import Foundation
import SwiftUI

var imageToDisplay : Image?

class SwiftUIDelegate : ObservableObject {
        @Published var spinningAnimationOn :  Bool = false
        @Published var pulsingAnimationOn  :  Bool = false
}
