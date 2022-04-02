//
//  ViewController.swift
//  UIKitToSwiftUI
//
//  Created by Mauro Monti on 01/04/22.
//

import UIKit
import SwiftUI

class ViewController: UIViewController , UINavigationControllerDelegate, UIImagePickerControllerDelegate{

    var imageToPass : Image?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonImagePicker(_ sender: Any) {
        
        let picker = UIImagePickerController()
        
        picker.allowsEditing = true
        
        picker.delegate = self
        
        present(picker, animated: true)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        guard let image = info[.editedImage] as? UIImage else {return}
        imageToPass = Image(uiImage: image)
        dismiss(animated: true)
        
    }


}

