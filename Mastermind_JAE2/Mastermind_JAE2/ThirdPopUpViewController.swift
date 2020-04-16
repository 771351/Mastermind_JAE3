//
//  ThirdPopUpViewController.swift
//  Mastermind_JAE2
//
//  Created by MORALES, ADRIAN on 1/23/20.
//  Copyright © 2020 BURRIGHT, JACK. All rights reserved.
//

import UIKit

class ThirdPopUpViewController: UIViewController {
//popup view controller for the rules page
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.8)

        // Do any additional setup after loading the view.
    }
    
    @IBAction func closePopUp(_ sender: UIButton) {
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
