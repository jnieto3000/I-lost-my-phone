//
//  ViewController.swift
//  J_Nieto_iLostMyPhoneApp
//
//  Created by X on 5/16/20.
//  Copyright © 2020 X. All rights reserved.
//

import UIKit

class ViewController: UIViewController {    
    var name = ""
    var email = ""
    var phone = ""
    var reward = ""
    var confirmInfoText:String?

    @IBOutlet weak var name_TextField: UITextField!
    @IBOutlet weak var email_TextField: UITextField!
    @IBOutlet weak var phone_TextField: UITextField!
    @IBOutlet weak var reward_TextField: UITextField!
    @IBOutlet weak var userInfoTextFields: UITextView!
    @IBOutlet weak var enterBtn: UIButton!
    @IBOutlet weak var confirmBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        confirmBtn.isHidden = true
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       let receiverVC = segue.destination as! recieverVC
        
        if let text = confirmInfoText{
            receiverVC.recievingData = text
            }

    }
    
    @IBAction func enter_Button(_ sender: Any) {
        // really the Confirm button
        name = name_TextField.text!
        email = email_TextField.text!
        phone = phone_TextField.text!
        reward = reward_TextField.text!
        //email_TextField.text = " "
        //phone_TextField.text = " "
        //reward_TextField.text = " "
        //     rescureImg.image = UIImage(named: "iphone2")
       
        confirmInfoText = "Contact me for a reward. \n\n Reward: $" + reward + "\n\n Phone: " + phone + "\n Email: " + email + "\n Name: " + name
        
    }
    
    @IBAction func confirm_Button(_ sender: Any) {
        // really the Enter button
        name = name_TextField.text!
        email = email_TextField.text!
        phone = phone_TextField.text!
        reward = reward_TextField.text!

        confirmInfoText = "Please verify all information is correct. If it is click Confirm button. \n\n Reward: $"+reward + "\n Phone: " + phone + "\n Email: " + email + "\n Name: " + name
        
        userInfoTextFields.text = confirmInfoText
        confirmBtn.isEnabled = true
        confirmBtn.isHidden = false
        enterBtn.isEnabled = false
        
    }
    
}

