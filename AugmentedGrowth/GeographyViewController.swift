//
//  GeographyViewController.swift
//  AugmentedGrowth
//
//  Created by Naman Alagh on 03/03/23.
//

import UIKit

class GeographyViewController: UIViewController {

   
    @IBOutlet weak var scrollViewOutlet: UIScrollView!
    
    @IBOutlet weak var subviewOutlet: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollViewOutlet.delegate = self
        scrollViewOutlet.maximumZoomScale = 2
    }
    

}


extension GeographyViewController: UIScrollViewDelegate {
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return subviewOutlet
    }
}
