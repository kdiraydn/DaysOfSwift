//
//  SecondViewController.swift
//  SequeApp
//
//  Created by Abdulkadir Aydın on 25.09.2022.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var myLabelSecond: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    var myName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = myName
    }
    

}
