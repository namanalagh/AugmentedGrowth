//
//  AstronomyViewController.swift
//  AugmentedGrowth
//
//  Created by Naman Alagh on 20/02/23.
//

import UIKit

extension CGPoint {
    static func distanceBetween(point p1: CGPoint,
                                andPoint p2: CGPoint) -> CGFloat {
        return sqrt(pow((p2.x - p1.x), 2) + pow((p2.y - p1.y), 2))
    }

    static func angle(from fromPoint: CGPoint, to toPoint: CGPoint) -> CGFloat {
        let dx: CGFloat = fromPoint.x - toPoint.x
        let dy: CGFloat = fromPoint.y - toPoint.y
        let radians: CGFloat = atan2(dy, dx)
        return radians
    }

}

class AstronomyViewController: UIViewController {

    
    @IBOutlet weak var earthButton: UIButton!
    @IBOutlet weak var mercuryButton: UIButton!
    @IBOutlet weak var venusButton: UIButton!
    @IBOutlet weak var marsButton: UIButton!
    @IBOutlet weak var jupiterButton: UIButton!
    @IBOutlet weak var saturnButton: UIButton!
    @IBOutlet weak var uranusButton: UIButton!
    @IBOutlet weak var neptuneButton: UIButton!
    
    
    @IBOutlet weak var mercuryImage: UIImageView!
    @IBOutlet weak var venusImage: UIImageView!
    @IBOutlet weak var earthImage: UIImageView!
    @IBOutlet weak var marsImage: UIImageView!
    @IBOutlet weak var jupiterImage: UIImageView!
    @IBOutlet weak var saturnImage: UIImageView!
    @IBOutlet weak var uranusImage: UIImageView!
    @IBOutlet weak var neptuneImage: UIImageView!
    
    @IBOutlet weak var moonImage: UIImageView!
    
    
    @IBOutlet weak var popupView: UIView!
    @IBOutlet weak var popupNameLabel: UILabel!
    @IBOutlet weak var planetDescriptionLabel: UILabel!
    
    @IBOutlet weak var goButton: UIButton!
    
    var selectedPlanet: Planet!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.navigationController?.navigationBar.isTranslucent = true
        self.tabBarController?.tabBar.tintColor = .white
        self.tabBarController?.tabBar.barTintColor = .black
        self.navigationController?.navigationBar.tintColor = .white
    }
    
    override func viewWillAppear(_ animated: Bool) {
            super.viewDidAppear(true)
        animatePlanet(planetImage: mercuryImage)
        animatePlanet(planetImage: venusImage)
        animatePlanet(planetImage: earthImage, moon: moonImage)
        revolve(image: moonImage, around: earthImage)
        animatePlanet(planetImage: marsImage)
        animatePlanet(planetImage: jupiterImage)
        animatePlanet(planetImage: saturnImage)
        animatePlanet(planetImage: uranusImage)
        animatePlanet(planetImage: neptuneImage)
        self.tabBarController?.tabBar.tintColor = .white
        self.tabBarController?.tabBar.barTintColor = .black
        }
    
    
    override func viewDidDisappear(_ animated: Bool) {
            super.viewDidDisappear(true)
        
        self.tabBarController?.tabBar.tintColor = .label
        self.tabBarController?.tabBar.barTintColor = .label
        view.layer.removeAllAnimations()
        }
    
    func revolve(image: UIImageView, around center: UIImageView ) {
        let distance = CGPoint.distanceBetween(point: center.center, andPoint: image.center)
        var angle = CGPoint.angle(from: center.center, to: image.center)
                angle = .pi + angle

        let circlePath = UIBezierPath(arcCenter: center.center, radius: distance, startAngle: angle + .pi*2, endAngle: angle, clockwise: false)
                
        let animation = CAKeyframeAnimation(keyPath: #keyPath(CALayer.position))
                animation.duration = 20
                animation.repeatCount = MAXFLOAT
                animation.path = circlePath.cgPath

                image.layer.add(animation, forKey: nil)
    }
    
    func animatePlanet(planetImage: UIImageView, moon: UIImageView? = nil){
        
        let animDuration = Int.random(in: 3...5)
        let animDelay = Float.random(in: 0...1)
        let bobbleDistance = CGFloat.random(in: 20...60) * (Bool.random() ? 1 : -1)
    
        
        UIView.animate(withDuration: TimeInterval(animDuration), delay: TimeInterval(animDelay), options: [.repeat, .autoreverse], animations: {

            planetImage.transform = CGAffineTransform(translationX: 0, y: CGFloat(bobbleDistance))
            if let unwrappedMoon = moon {
                unwrappedMoon.transform = CGAffineTransform(translationX: 0, y: CGFloat(bobbleDistance))
            }

        }, completion: nil)
       
    }
    
    
    
    
    @IBAction func goButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "selectPlanet", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "selectPlanet" {
            let sharedPlanet = selectedPlanet
            let destinationVC = segue.destination as! PlanetViewController
            destinationVC.selectedPlanet = sharedPlanet!
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    
    func placePopup(planet: UIImageView){
        popupNameLabel.text = selectedPlanet.name
        planetDescriptionLabel.text = selectedPlanet.description
//        popupView.frame =  CGRectMake(planet.frame.origin.x+planet.frame.size.width + 1, planet.frame.origin.y + planet.frame.size.height/4 ,popupView.frame.size.width,popupView.frame.size.height)
        
        UIView.animate(withDuration: 0.5, delay: 0, animations: {

            self.popupView.transform = CGAffineTransform(translationX: 0, y: 50)
            
        }, completion: nil)
        
    }
    
    @IBAction func sunButtonPressed(_ sender: Any) {
        selectedPlanet = planets[0]
        performSegue(withIdentifier: "selectPlanet", sender: self)
    }
    
    @IBAction func mercuryButtonPressed(_ sender: Any) {
        selectedPlanet = planets[1]
        performSegue(withIdentifier: "selectPlanet", sender: self)
        placePopup(planet: mercuryImage)
//        let sidePopup = AstronomyPopupViewController()
//        sidePopup.appear(sender: self)

    }
    
    @IBAction func venusButtonPressed(_ sender: Any) {
        selectedPlanet = planets[2]
        performSegue(withIdentifier: "selectPlanet", sender: self)
        placePopup(planet: venusImage)
    }
    
    @IBAction func earthButtonPressed(_ sender: Any) {
        selectedPlanet = planets[3]
        performSegue(withIdentifier: "selectPlanet", sender: self)
        placePopup(planet: earthImage)
    }
    
    
    @IBAction func marsButtonPressed(_ sender: Any) {
        selectedPlanet = planets[4]
        performSegue(withIdentifier: "selectPlanet", sender: self)
        placePopup(planet: marsImage)

    }
    
    
    @IBAction func jupiterButtonPressed(_ sender: Any) {
        selectedPlanet = planets[6]
        performSegue(withIdentifier: "selectPlanet", sender: self)
        placePopup(planet: jupiterImage)

    }
    
    @IBAction func saturnButtonPressed(_ sender: Any) {
        selectedPlanet = planets[7]
        performSegue(withIdentifier: "selectPlanet", sender: self)
        placePopup(planet: saturnImage)

    }
    
    @IBAction func uranusButtonPressed(_ sender: Any) {
        selectedPlanet = planets[8]
        performSegue(withIdentifier: "selectPlanet", sender: self)
        placePopup(planet: uranusImage)

    }
    
    @IBAction func neptuneButtonPressed(_ sender: Any) {
        selectedPlanet = planets[9]
        performSegue(withIdentifier: "selectPlanet", sender: self)
        placePopup(planet: neptuneImage)

    }
    
    
    

}
