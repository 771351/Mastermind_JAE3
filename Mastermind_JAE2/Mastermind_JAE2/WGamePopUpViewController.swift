//
//  WGamePopUpViewController.swift
//  Mastermind_JAE2
//
//  Created by Adrian Morales on 2/18/20.
//  Copyright © 2020 BURRIGHT, JACK. All rights reserved.
//

import UIKit

class WGamePopUpViewController: UIViewController {
//for view controller of winning game
    override func viewDidLoad() {
        super.viewDidLoad()
         self.view.backgroundColor = UIColor.black.withAlphaComponent(0.8)
        print()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func closePopUp(_ sender: Any) {
        self.view.removeFromSuperview()
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
