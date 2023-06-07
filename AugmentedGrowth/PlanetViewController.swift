//
//  PlanetViewController.swift
//  AugmentedGrowth
//
//  Created by Naman Alagh on 21/02/23.
//

import UIKit
import SafariServices

class PlanetViewController: UIViewController {
    
    var selectedPlanet: Planet!
    
    @IBOutlet weak var planetImage: UIImageView!
    @IBOutlet weak var planetLabel: UILabel!
    
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var radiusLabel: UILabel!
    @IBOutlet weak var noOfMoonsLabel: UILabel!
    @IBOutlet weak var distFromSunLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = selectedPlanet.name
        planetImage.image = UIImage(named: selectedPlanet.thumbnail)
        planetLabel.text = selectedPlanet.name
        populateLabelData()
        UIView.animate(withDuration: 4, delay: 0, options: [.repeat, .autoreverse], animations: {
            
            self.planetImage.transform = CGAffineTransform(translationX: 0, y: 30)
            
        }, completion: nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToAR" {
            let sharedPlanet = selectedPlanet
            let destinationVC = segue.destination as! PlanetARViewController
            destinationVC.selectedPlanet = sharedPlanet!
        }
    }
    
    func populateLabelData(){
        if let unwrappedRadius = selectedPlanet.radius{
            radiusLabel.text = "Radius: \(unwrappedRadius) km"
        } else{
            radiusLabel.text = ""
        }
        
        if let unwrappedNoOfMoons = selectedPlanet.noOfMoons{
            noOfMoonsLabel.text = "Moons: \(unwrappedNoOfMoons)"
        } else{
            noOfMoonsLabel.text = ""
        }
        
        if let unwrappedDay = selectedPlanet.day{
            dayLabel.text = "1 Day: \(unwrappedDay) Day(s)"
        } else{
            dayLabel.text = ""
        }
        
        if let unwrappedYear = selectedPlanet.year{
            yearLabel.text = "1 Year: \(unwrappedYear) Day(s)"
        } else{
            yearLabel.text = ""
        }
        
        if let unwrappedDistFromSun = selectedPlanet.distanceFromSun{
            distFromSunLabel.text = "\(unwrappedDistFromSun) million km away from the Sun"
        } else{
            distFromSunLabel.text = ""
        }
        
    }
    
    @IBAction func linkButtonPressed(_ sender: Any) {
        if let url = URL(string: selectedPlanet.link){
            let safariVC = SFSafariViewController(url: url)
            present(safariVC, animated: true, completion: nil)
        }
    }
    
    
}
