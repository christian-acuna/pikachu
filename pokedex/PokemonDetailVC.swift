//
//  PokemonDetailVC.swift
//  pokedex
//
//  Created by Christian on 4/5/16.
//  Copyright © 2016 Crossroads. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {
  
  var pokemon: Pokemon!

  @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = pokemon.name
        // Do any additional setup after loading the view.
    }
}
