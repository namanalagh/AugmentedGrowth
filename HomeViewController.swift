//
//  HomeViewController.swift
//  AugmentedGrowth
//
//  Created by Naman Alagh on 19/02/23.
//

import UIKit


class HomeViewController: UIViewController{
    

    @IBOutlet weak var astronomyButton: UIButton!
    
    
    @IBOutlet weak var mathButton: UIButton!
    
    
    @IBOutlet weak var mathLabel: UILabel!
    @IBOutlet weak var gkLabel: UILabel!
    
    @IBOutlet weak var astronomyLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animateLabel(topicLabel: mathLabel)
        animateLabel(topicLabel: gkLabel)
        animateLabel(topicLabel: astronomyLabel)
    }
    

    func animateLabel(topicLabel: UILabel){
        
        let animDuration = Int.random(in: 3...5)
        let animDelay = Float.random(in: 0...1)
        let bobbleDistance = CGFloat.random(in: 10...20) * (Bool.random() ? 1 : -1)
    
        
        UIView.animate(withDuration: TimeInterval(animDuration), delay: TimeInterval(animDelay), options: [.repeat, .autoreverse], animations: {

            topicLabel.transform = CGAffineTransform(translationX: 0, y: CGFloat(bobbleDistance))

        }, completion: nil)
       
    }

}
