//
//  SecondViewController.swift
//  Scene-Trans01
//
//  Created by sogih on 09/05/2019.
//  Copyright © 2019 sogih. All rights reserved.
//

import Foundation
import UIKit

class SecondViewController: UIViewController {

    @IBAction func back(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true)
    }
}
