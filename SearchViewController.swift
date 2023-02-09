//
//  SearchViewController.swift
//  AugmentedGrowth
//
//  Created by Naman Alagh on 31/01/23.
//

import UIKit

class SearchViewController: UIViewController {

    let searchController = UISearchController()
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Search"
        navigationItem.searchController = searchController
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
