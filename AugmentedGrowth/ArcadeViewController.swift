//
//  ArcadeViewController.swift
//  AugmentedGrowth
//
//  Created by Naman Alagh on 02/03/23.
//

import UIKit

class ArcadeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabBarController?.tabBar.barTintColor = .black
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.tabBar.barTintColor = .black
    }
    

}
