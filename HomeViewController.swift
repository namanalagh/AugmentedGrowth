//
//  HomeViewController.swift
//  AugmentedGrowth
//
//  Created by Naman Alagh on 19/02/23.
//

import UIKit

class resultsViewController : UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

class HomeViewController: UIViewController, UISearchResultsUpdating  {
    func updateSearchResults(for searchController: UISearchController) {
        guard let text = searchController.searchBar.text else {
            return
        }
        print(text)
    }
    

    var selectedTopic: String?
    
    let searchController = UISearchController(searchResultsController: resultsViewController())

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Explore"
        navigationItem.searchController = searchController
        searchController.searchResultsUpdater = self
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
