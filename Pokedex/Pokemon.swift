//
//  Pokemon.swift
//  Pokedex
//
//  Created by Anas Hmamouch on 29/2/16.
//  Copyright © 2016 Benzino. All rights reserved.
//

import Foundation
import Alamofire

class Pokemon{
    private var _name: String!
    private var _pokedexId: Int!
    private var _description: String!
    private var _type: String!
    private var _defense: String!
    private var _height: String!
    private var _weight: String!
    private var _attack: String!
    private var _nextEvolution: String!
    private var _pokemonUrl: String!
    
    var  name: String{
        return _name
    }
    
    var pokedexId: Int{
        return _pokedexId
    }
    
    
    
    init(name: String, pokedexId: Int){
        self._name = name
        self._pokedexId = pokedexId
        
        self._pokemonUrl = "\(URL_BASE)\(URL_POKEMON)\(self.pokedexId)/"
    }
    
    func downloadPokemonDetails(completed: DownloadComplete){
        let url = NSURL(string: self._pokemonUrl)!
        Alamofire.request(.GET, url).responseJSON { (json: Response<AnyObject, NSError>) -> Void in
                print(json.result.debugDescription)
            
            }
        }
    }
    

