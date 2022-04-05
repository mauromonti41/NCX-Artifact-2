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
    
    var delegate = SwiftUIDelegate()
    
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
            self.delegate.spinningAnimationOn = true
        }
        else{
            self.delegate.spinningAnimationOn = false
        }
    }
    
    @IBAction func pulseToggler(_ sender: Any) {
        if pulsingToggle.isOn{
            self.delegate.pulsingAnimationOn = true
        }
        else {
            self.delegate.pulsingAnimationOn = false
        }
    }
    
    @IBSegueAction func embedSwiftUIView(_ coder: NSCoder) -> UIViewController? {
        return UIHostingController(coder: coder, rootView: SwiftUIView(delegate: delegate))
    }
}


