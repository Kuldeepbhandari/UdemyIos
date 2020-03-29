//
//  LoginVC.swift
//  SmackChatApp
//
//  Created by mac on 27/03/20.
//  Copyright © 2020 KuldeepBhandari. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func closeBtnTapped(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func tappedOnLogin(_ sender: UIButton) {
    }
    
    @IBAction func createAccountBtnPressed(_ sender: UIButton) {
        performSegue(withIdentifier: TO_CREATE_ACCOUNT, sender: nil)
    }
}
