//
//  ViewController.swift
//  leaders_06_gatcha
//
//  Created by Yoshinori Shibahara on 2020/05/09.
//  Copyright © 2020 Yoshinori Shibahara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func gatcha() {
        self.performSegue(withIdentifier: "result", sender: nil)
    }


}

