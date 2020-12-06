//
//  ChoseVC.swift
//  Animals For Kids
//
//  Created by Abdulloh Bahromjonov on 10/9/20.
//

import UIKit
import AVFoundation

class ChoseVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    @IBAction func exitBtnWasPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func choseBtnsWasPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "play", sender: self)
        
        playSound()
        if wichWasChoosed == domestic
        {
            
        }
        else if sender.tag == jungle
        {
           
        }
        else if wichWasChoosed == forest
        {
           
        }
        wichWasChoosed = sender.tag
    }
    
}
