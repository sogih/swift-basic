//
//  ViewController.swift
//  Scene-ManualSegue
//
//  Created by sogih on 13/05/2019.
//  Copyright © 2019 sogih. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func wind(_ sender: Any) {
        performSegue(withIdentifier: "ManualWind", sender: self)
    }
    
}

