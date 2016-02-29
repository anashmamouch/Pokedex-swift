//
//  PokeCellCollectionViewCell.swift
//  Pokedex
//
//  Created by Anas Hmamouch on 29/2/16.
//  Copyright © 2016 Benzino. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    var pokemon: Pokemon!
    
    
    required init?(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
        
        //set the rounder corner on the cell 
        layer.cornerRadius = 7.5
    }
    
    func configureCell(pokemon: Pokemon){
        self.pokemon = pokemon
        
        nameLabel.text = self.pokemon.name.capitalizedString
        thumbImage.image = UIImage(named:"\(self.pokemon.pokedexId)")
    
    }
    
}
