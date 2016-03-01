//
//  PokemonDetailVCViewController.swift
//  Pokedex
//
//  Created by Anas Hmamouch on 1/3/16.
//  Copyright © 2016 Benzino. All rights reserved.
//

import UIKit

class PokemonDetailVCViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    var pokemon: Pokemon!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = pokemon.name
    
    }

}
