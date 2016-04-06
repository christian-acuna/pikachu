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
  @IBOutlet weak var weightLbl: UILabel!
  @IBOutlet weak var baseAttack: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        let img = UIImage(named: "\(pokemon.pokedexId)")

        nameLabel.text = pokemon.name.capitalizedString
        mainImg.image = img
        currentEvoImg.image = img
        
      
      pokemon.downloadPokemonDetails { () -> () in
        //this will be called after download is done
        //inside of a closure call self
        self.updateUI()
        
      }
      
    }
  
  func updateUI() {
      descriptionLbl.text = pokemon.description
      typeLbl.text = pokemon.type
      defenseLbl.text = pokemon.defense
      heightLbl.text = pokemon.height
      pokedexLbl.text = "\(pokemon.pokedexId)"
      weightLbl.text = pokemon.weight
      baseAttack.text = pokemon.attack
    
    if pokemon.nextEvolutionId == "" {
      evoLbl.text = "No Evolutions"
      nextEvoImg.hidden = true
      
    } else {
      nextEvoImg.hidden = false
      nextEvoImg.image = UIImage(named: pokemon.nextEvolutionId)
      var str = "Next Evolution: \(pokemon.nextEvolutionTxt)"
      if pokemon.nextEvolutionLvl != "" {
        str += " - LVL \(pokemon.nextEvolutionLvl)"
      }
    }
    
    
    
    }
  
  @IBAction func backBtnPressed(sender: AnyObject) {
    dismissViewControllerAnimated(true, completion: nil)
  }
}
