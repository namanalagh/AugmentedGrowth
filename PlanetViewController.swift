//
//  PlanetViewController.swift
//  AugmentedGrowth
//
//  Created by Naman Alagh on 21/02/23.
//

import UIKit

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
        guard let unwrappedRadius = selectedPlanet.radius else
        {
            radiusLabel.text = ""
            return
        }
        radiusLabel.text = "Radius: \(unwrappedRadius)"
        
        guard let unwrappedMoons = selectedPlanet.noOfMoons else
        {
            noOfMoonsLabel.text = ""
            return
        }
        noOfMoonsLabel.text = "Moons: \(unwrappedMoons)"
        
        guard let unwrappedDay = selectedPlanet.day else
        {
            dayLabel.text = ""
            return
        }
        dayLabel.text = "1 Day: \(unwrappedDay)"
        
        guard let unwrappedYear = selectedPlanet.year else
        {
            yearLabel.text = ""
            return
        }
        yearLabel.text = "1 Year: \(unwrappedYear)"
    }
    
}
