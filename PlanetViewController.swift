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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
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
