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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    // MARK: - Navigation
    
    //for container view - RecipesTableViewController so this gets shown what tableView is showing

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
 
    @IBAction func SearchTextFieldAction(_ sender: Any) {
    }
    
}
