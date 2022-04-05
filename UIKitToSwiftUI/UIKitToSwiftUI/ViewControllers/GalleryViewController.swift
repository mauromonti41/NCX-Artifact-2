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
    
    @IBOutlet var spinningToggle: UISwitch!
    @IBOutlet var pulsingToggle:  UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        spinningToggle.isOn = false
        pulsingToggle.isOn = false
    }

    @IBAction func spinToggler(_ sender: Any) {
      
        if spinningToggle.isOn{
            spinningAnimationOn = true
        }
        else{
            spinningAnimationOn = false
        }
    }
    
    @IBAction func pulseToggler(_ sender: Any) {
        if pulsingToggle.isOn{
            pulsingAnimationOn = true
        }
        else {
            pulsingAnimationOn = false
        }
    }
    
    @IBSegueAction func embedSwiftUIView(_ coder: NSCoder) -> UIViewController? {
        return UIHostingController(coder: coder, rootView: SwiftUIView())
    }
}


