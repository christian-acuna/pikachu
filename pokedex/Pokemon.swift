//
//  Pokemon.swift
//  pokedex
//
//  Created by Christian on 4/4/16.
//  Copyright © 2016 Crossroads. All rights reserved.
//

import Foundation

class Pokemon {
  private var _name: String! //! because we know we are going to have a Pokemon with a name
  private var _pokedexId: Int!
  
  //getters
  var name: String {
    return _name
  }
  
  var pokedexId: Int {
    return _pokedexId
  }
  
  //initializer, whenever you create a new Pokemon object it has to have a name and pokedexId. That's why it's okay to put the ! on private var
  init(name: String, pokedexId: Int) {
    self._name = name
    self._pokedexId = pokedexId
  }
}