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
        
        var animDuration = Int.random(in: 3...5)
        var animDelay = Float.random(in: 0...1)
        var bobbleDistance = Int.random(in: 30...80)
        
        UIView.animate(withDuration: TimeInterval(animDuration), delay: TimeInterval(animDelay), options: [.repeat, .autoreverse], animations: {

            planetButton.frame = CGRect(x: planetButton.frame.origin.x, y: planetButton.frame.origin.y+CGFloat(bobbleDistance), width: 100, height: 100)

        }, completion: nil)
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
