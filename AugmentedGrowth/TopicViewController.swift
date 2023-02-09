//
//  TopicViewController.swift
//  AugmentedGrowth
//
//  Created by Naman Alagh on 04/02/23.
//

import UIKit

class TopicViewController: UIViewController {

    @IBOutlet weak var difficultyProgressBar: UIProgressView!
    
    @IBOutlet weak var difficultyStatusLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Explore Jupiter"
        difficultyProgressBar.transform = CGAffineTransform(scaleX: 1, y: 11)
        difficultyStatusLabel.text = "Easy"
        // Do any additional setup after loading the view.
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
