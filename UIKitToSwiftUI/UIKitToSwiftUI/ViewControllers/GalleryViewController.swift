//
//  GalleryViewController.swift
//  UIKitToSwiftUI
//
//  Created by Mauro Monti on 01/04/22.
//

import Foundation
import UIKit
import SwiftUI

class GalleryViewController: UIViewController{
    
    var sample = Sample()
    
    @IBOutlet var spinningToggle: UISwitch!
    @IBOutlet var pulsingToggle:  UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func spinToggler(_ sender: Any) {
      
        if spinningToggle.isOn{
            sample.spinningAnimationOn = true
        }
        else{
            sample.spinningAnimationOn = false
        }
    }
    
    @IBAction func pulseToggler(_ sender: Any) {
        if pulsingToggle.isOn{
            sample.pulsingAnimationOn = true
        }
        else {
            sample.pulsingAnimationOn = false
        }
    }
    
    @IBSegueAction func embedSwiftUIView(_ coder: NSCoder) -> UIViewController? {
        return UIHostingController(coder: coder, rootView: SwiftUIView())
    }
}

class Sample : ObservableObject{
    
    @Published var spinningAnimationOn : Bool = false
    @Published var pulsingAnimationOn  : Bool = false
    
}
