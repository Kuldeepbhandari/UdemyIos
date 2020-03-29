//
//  ChannelVC.swift
//  SmackChatApp
//
//  Created by mac on 27/03/20.
//  Copyright © 2020 KuldeepBhandari. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    @IBOutlet weak var loginOutlets: UIButton!
    
    @IBAction func prepareForUnwindSegue(segue:UIStoryboardSegue){}
    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController()?.rearViewRevealWidth = self.view.frame.size.width-60

    }
    
    @IBAction func tappedOnAddChannel(_ sender: UIButton) {
        
    }
    
    @IBAction func tappedOnLogin(_ sender: UIButton) {
        performSegue(withIdentifier: TO_LOGIN, sender: nil)
        
    }
    

}
