//
//  recieverVC.swift
//  J_Nieto_iLostMyPhoneApp
//
//  Created by X on 5/16/20.
//  Copyright © 2020 X. All rights reserved.
//

import UIKit

class recieverVC: UIViewController {
    var recievingData:String?
    
    @IBOutlet weak var recieverImageViewer: UIImageView!
    @IBOutlet weak var recieverTextFields: UITextView!
    @IBOutlet weak var activateBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let receivedText = recievingData{
            recieverTextFields.text = receivedText
        }
        
        // Do any additional setup after loading the viewi
    }
    
    @IBAction func activeBtn(_ sender: Any) {
        activateBtn.setTitle("Activated!!", for: .normal)
        recieverImageViewer.image = UIImage(named:"shield-2")
    }
    
    @IBAction func closeAppBtn(_ sender: Any) {
        exit(0);
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
