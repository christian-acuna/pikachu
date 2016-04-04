//
//  PokeCell.swift
//  pokedex
//
//  Created by Christian on 4/4/16.
//  Copyright © 2016 Crossroads. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
  
  @IBOutlet weak var thumbImg: UIImageView!
  @IBOutlet weak var nameLbl: UILabel!
  
  var pokemon: Pokemon! //Pokemon class created in model
  
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    
    layer.cornerRadius = 5.0
  }
  
  func configureCell(pokemon: Pokemon) { //pass in a Pokemon object to configure the cell
    self.pokemon = pokemon
    
    nameLbl.text = self.pokemon.name.capitalizedString //capitalize the first word in a sentence
    thumbImg.image = UIImage(named: "\(self.pokemon.pokedexId)")
    
  }
    
}
