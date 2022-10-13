//
//  ViewController.swift
//  LanmarkBook
//
//  Created by Abdulkadir Aydın on 5.10.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var landmarkNames = [String]()
    var lanmarkImages = [UIImage]()
    var lanmarkMatch = [String]()
    var chosenLandmarkName = ""
    var chosenLandmarkImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
        landmarkNames.append("besiktas1")
        landmarkNames.append("besiktas2")
        landmarkNames.append("besiktas3")
        landmarkNames.append("besiktas4")
        landmarkNames.append("besiktas5")
        
        
        lanmarkImages.append(UIImage(named: "besiktas1.jpg")!)
        lanmarkImages.append(UIImage(named: "besiktas2.jpg")!)
        lanmarkImages.append(UIImage(named: "besiktas3.jpg")!)
        lanmarkImages.append(UIImage(named: "besiktas4.jpg")!)
        lanmarkImages.append(UIImage(named: "besiktas5.jpg")!)
        
        lanmarkMatch.append("BJK: 3-1 :FB")
        lanmarkMatch.append("BJK: 1-0 :TS")
        lanmarkMatch.append("BJK: 6-2 :GS")
        lanmarkMatch.append("BJK: 3-0 :KY")
        lanmarkMatch.append("BJK: 2-1 :AD")
       
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
              
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = landmarkNames[indexPath.row]
        content.secondaryText = lanmarkMatch[indexPath.row]
        //content.image = lanmarkImages[indexPath.row]
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenLandmarkName = landmarkNames[indexPath.row]
        chosenLandmarkImage = lanmarkImages[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsVC
            destinationVC.selectedLanmarkImage = chosenLandmarkImage
            destinationVC.selectedLandmarkName = chosenLandmarkName
        }
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            self.landmarkNames.remove(at: indexPath.row)
            self.lanmarkImages.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }

}

