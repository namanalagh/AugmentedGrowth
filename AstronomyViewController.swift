//
//  AstronomyViewController.swift
//  AugmentedGrowth
//
//  Created by Naman Alagh on 20/02/23.
//

import UIKit

class AstronomyViewController: UIViewController {

    
    @IBOutlet weak var earthButton: UIButton!
    @IBOutlet weak var mercuryButton: UIButton!
    @IBOutlet weak var venusButton: UIButton!
    @IBOutlet weak var marsButton: UIButton!
    @IBOutlet weak var jupiterButton: UIButton!
    @IBOutlet weak var saturnButton: UIButton!
    @IBOutlet weak var uranusButton: UIButton!
    @IBOutlet weak var neptuneButton: UIButton!
    
    var selectedPlanet: Planet!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animatePlanet(planetButton: mercuryButton)
        animatePlanet(planetButton: venusButton)
        animatePlanet(planetButton: earthButton)
        animatePlanet(planetButton: marsButton)
        animatePlanet(planetButton: jupiterButton)
        animatePlanet(planetButton: saturnButton)
        animatePlanet(planetButton: uranusButton)
        animatePlanet(planetButton: neptuneButton)
        
    }
    
    func animatePlanet(planetButton: UIButton){
        
        let animDuration = Int.random(in: 3...5)
        let animDelay = Float.random(in: 0...1)
        let bobbleDistance = Int.random(in: 30...80)
        
        UIView.animate(withDuration: TimeInterval(animDuration), delay: TimeInterval(animDelay), options: [.repeat, .autoreverse], animations: {

            planetButton.frame = CGRect(x: planetButton.frame.origin.x, y: planetButton.frame.origin.y+CGFloat(bobbleDistance), width: 100, height: 100)

        }, completion: nil)
       
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "selectPlanet" {
            let sharedPlanet = selectedPlanet
            let destinationVC = segue.destination as! PlanetViewController
            destinationVC.selectedPlanet = sharedPlanet!
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    
    @IBAction func sunButtonPressed(_ sender: Any) {
        selectedPlanet = planets[0]
        performSegue(withIdentifier: "selectPlanet", sender: self)
    }
    
    @IBAction func mercuryButtonPressed(_ sender: Any) {
        selectedPlanet = planets[1]
        performSegue(withIdentifier: "selectPlanet", sender: self)
    }
    
    @IBAction func venusButtonPressed(_ sender: Any) {
        selectedPlanet = planets[2]
        performSegue(withIdentifier: "selectPlanet", sender: self)
    }
    
    @IBAction func earthButtonPressed(_ sender: Any) {
        selectedPlanet = planets[3]
        performSegue(withIdentifier: "selectPlanet", sender: self)
    }
    
    
    @IBAction func marsButtonPressed(_ sender: Any) {
        selectedPlanet = planets[4]
        performSegue(withIdentifier: "selectPlanet", sender: self)
    }
    
    
    @IBAction func jupiterButtonPressed(_ sender: Any) {
        selectedPlanet = planets[6]
        performSegue(withIdentifier: "selectPlanet", sender: self)
    }
    
    @IBAction func saturnButtonPressed(_ sender: Any) {
        selectedPlanet = planets[7]
        performSegue(withIdentifier: "selectPlanet", sender: self)
    }
    
    @IBAction func uranusButtonPressed(_ sender: Any) {
        selectedPlanet = planets[8]
        performSegue(withIdentifier: "selectPlanet", sender: self)
    }
    
    @IBAction func neptuneButtonPressed(_ sender: Any) {
        selectedPlanet = planets[9]
        performSegue(withIdentifier: "selectPlanet", sender: self)
    }
    
    
    

}
