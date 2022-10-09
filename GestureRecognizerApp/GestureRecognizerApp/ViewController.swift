//
//  ViewController.swift
//  GestureRecognizerApp
//
//  Created by Abdulkadir Aydın on 27.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    var isMetallica = true
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        
        imageView.addGestureRecognizer(gestureRecognizer)
    }
    
    @objc func changePic() {
        
        
        if isMetallica == true {
            imageView.image = UIImage(named: "metallicafoto")
            myLabel.text = "Metallica Foto"
            isMetallica = false
            
        } else {
            imageView.image = UIImage(named: "metallica")
            myLabel.text = "Metallica"
            isMetallica = true
        }
        
    }


}

