//
//  ChooseCategoryVC.swift
//  Swoosh-App
//
//  Created by mac on 23/02/20.
//  Copyright © 2020 mac. All rights reserved.
//

import UIKit

class ChooseCategoryVC: UIViewController {

    var player:Player!
    
    @IBOutlet weak var nextBtn: BorderButton!
    @IBOutlet weak var coedOutlet: BorderButton!
    @IBOutlet weak var womensOutlet: BorderButton!
    @IBOutlet weak var mensOutllet: BorderButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func coedTapped(_ sender: Any) {
       // player.desiredLegaue = "Co-ed"
        selectedLegaue(league: "Co-Ed")
    }
    @IBAction func womenTapped(_ sender: Any) {
       // player.desiredLegaue = "Womens"
        selectedLegaue(league: "Womens")
    }
    @IBAction func menTapeed(_ sender: Any) {
        //player.desiredLegaue = "Mens"
        selectedLegaue(league: "Mens")
    }
    @IBAction func nectBtnTapped(_ sender: Any) {
        performSegue(withIdentifier: "chooseOptionSegue", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let chooseOption = segue.destination as? ChooseOptionVC{
            chooseOption.player = player
        }else{
            print("View controller not found")
        }
    }

    func selectedLegaue(league:String){
        player.desiredLegaue = league
        nextBtn.isEnabled = true
        
    }
   @IBAction func backFromChooseOption(segue:UIStoryboardSegue){
    nextBtn.isEnabled = false
        
    }
}
