//
//  AstronomyPopupViewController.swift
//  AugmentedGrowth
//
//  Created by Naman Alagh on 03/03/23.
//

import UIKit

class AstronomyPopupViewController: UIViewController {

    init(){
        super.init(nibName: "AstronomyPopupViewController", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configView()
        }

    func configView(){
        
    }
    
    func appear(sender: UIViewController){
        sender.present(self, animated: false) {
            //self.showPopup()
        }
        
    }

    private func showPopup(){
//        UIView.animate(withDuration: 2, delay: 0, animations: <#T##() -> Void#>)
    }
   

}
