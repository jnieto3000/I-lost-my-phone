//
//  ViewController.swift
//  J_Nieto_I Lost My Phone App
//
//  Created by X on 5/14/20.
//  Copyright © 2020 X. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLable: UILabel!
    @IBAction func EnterBtn(_ sender: UIButton) {
        myLable.text = "Pressed I enter button"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

