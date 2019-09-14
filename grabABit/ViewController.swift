//
//  ViewController.swift
//  grabABit
//
//  Created by Letitia Kwan on 2019-09-14.
//  Copyright © 2019 Letitia Kwan. All rights reserved.
//

// SOURCE: https://github.com/ioscreator/ioscreator/tree/master/IOSTakePhotoTutorial

import UIKit
import ARKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    var imagePicker: UIImagePickerController!
    
    @IBOutlet weak var takePhotoButton: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    @IBAction func takePhoto(_ sender: Any) {
        imagePicker =  UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = .camera
        
        present(imagePicker, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        takePhotoButton.backgroundColor = UIColor(displayP3Red: 223/255, green: 233/255, blue: 233/255, alpha: 1)
        takePhotoButton.layer.cornerRadius = 10
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        imagePicker.dismiss(animated: true, completion: nil)
        imageView.image = info[.originalImage] as? UIImage
    }
    
}

