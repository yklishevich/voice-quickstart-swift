//
//  RegisterViewController.swift
//  SwiftVoiceQuickstart
//
//  Created by Klishevich, Yauheni on 06/02/2018.
//  Copyright © 2018 Twilio, Inc. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var clientIDTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ViewController
        destVC.clientID = clientIDTextField.text
    }
    
    @IBAction func registerButtonPressed(_ sender: UIButton) {
        if !clientIDTextField.text!.isEmpty {
            self.performSegue(withIdentifier: "showViewController", sender: nil)
        }
    }
}
