//
//  RecipeDetailViewController.swift
//  Recipes
//
//  Created by Dongwoo Pae on 5/22/19.
//  Copyright © 2019 Lambda Inc. All rights reserved.
//

import UIKit

class RecipeDetailViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    var recipe: Recipe? {
        didSet {
            updateViews()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    func updateViews() {
        guard let recipe = recipe, isViewLoaded else {return}
            nameLabel.text = recipe.name
            textView.text = recipe.instructions
    }

}
