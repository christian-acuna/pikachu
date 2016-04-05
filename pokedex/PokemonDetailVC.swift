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
  @IBOutlet weak var mainImg: UIImageView!
  @IBOutlet weak var descriptionLbl: UILabel!
  @IBOutlet weak var typeLbl: UILabel!
  @IBOutlet weak var defenseLbl: UILabel!
  @IBOutlet weak var heightLbl: UILabel!
  @IBOutlet weak var pokedexLbl: UILabel!
  @IBOutlet weak var currentEvoImg: UIImageView!
  @IBOutlet weak var nextEvoImg: UIImageView!
  @IBOutlet weak var evoLbl: UILabel!
  
  
  
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = pokemon.name
        // Do any additional setup after loading the view.
    }
  @IBAction func backBtnPressed(sender: AnyObject) {
    dismissViewControllerAnimated(true, completion: nil)
  }
}
