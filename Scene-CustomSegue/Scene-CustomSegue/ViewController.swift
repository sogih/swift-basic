//
//  ViewController.swift
//  Scene-CustomSegue
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        NSLog("segueway identifier: \(segue.identifier!)")
        
        if segue.identifier == "custom_segue" {
            NSLog("커스텀 세그가 실행됩니다")
        } else if segue.identifier == "action_segue" {
            NSLog("액션 세그가 실행됩니다")
        } else {
            NSLog("알수 없는 세그입니다")
        }
    }


}

