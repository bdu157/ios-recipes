//
//  MainViewController.swift
//  Recipes
//
//  Created by Dongwoo Pae on 5/22/19.
//  Copyright © 2019 Lambda Inc. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    @IBOutlet weak var SearchTextField: UITextField!
    
    let networkClient = RecipesNetworkClient()
    var allRecipes: [Recipe] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.networkClient.fetchRecipes { (recipe, error) in
            if let error = error {
                NSLog("There was an error loading recipes \(error)")
                return
            }
            
            self.allRecipes = recipe ?? []
            
            
        }
        
    }
    

    // MARK: - Navigation
    
    //for container view - RecipesTableViewController so this gets shown what tableView is showing

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
 
    @IBAction func SearchTextFieldAction(_ sender: Any) {
    }
    
}
