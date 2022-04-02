//
//  GalleryViewController.swift
//  UIKitToSwiftUI
//
//  Created by Mauro Monti on 01/04/22.
//

import Foundation
import UIKit
import SwiftUI

class GalleryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBSegueAction func embedSwiftUIView(_ coder: NSCoder) -> UIViewController? {
        return UIHostingController(coder: coder, rootView: SwiftUIView())
    }
}
