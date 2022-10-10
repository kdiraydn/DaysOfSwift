//
//  ViewController.swift
//  SequeApp
//
//  Created by Abdulkadir Aydın on 25.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var userName = ""

    @IBOutlet weak var myLabelFirst: UILabel!
    
    @IBOutlet weak var mainText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("ViewDidLoad function called")
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("ViewDidDisappear function called")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("ViewWillDisappear function called")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("ViewWillAppear function called")
        mainText.text = ""
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("ViewDidAppear function called")
    }


    @IBAction func nextClicked(_ sender: Any) {
        userName = mainText.text!
        
        
        
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.myName = userName
        }
    }
    
}

