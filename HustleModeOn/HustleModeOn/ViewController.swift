//
//  ViewController.swift
//  HustleModeOn
//
//  Created by mac on 29/01/20.
//  Copyright © 2020 mac. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var onlLbl: UILabel!
    @IBOutlet weak var hustleMode: UILabel!
    @IBOutlet weak var rocket: UIImageView!
    @IBOutlet weak var cloudHolder: UIView!
    @IBOutlet weak var powerBtn: UIButton!
    @IBOutlet weak var darkBkueBg: UIImageView!
    
    var player:AVAudioPlayer!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let path = Bundle.main.path(forResource: "hustle-on", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do{
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        }catch let error as NSError{
            print(error.description)
        }
        
    }

    @IBAction func powerBtnPressed(_ sender: Any) {
        cloudHolder.isHidden = false
        darkBkueBg.isHidden = true
        powerBtn.isHidden = true
        
        player.play()
        UIView.animate(withDuration: 2.3, animations: {
            self.rocket.frame = CGRect(x: 0, y: 140, width: 406, height: 669)
        }) { (finished) in
            self.hustleMode.isHidden = false
            self.onlLbl.isHidden = false
        }
    }
    
    
}

