//
//  StatsViewController.swift
//  Mastermind_JAE2
//
//  Created by Jack Burright on 4/28/20.
//  Copyright © 2020 BURRIGHT, JACK. All rights reserved.
//

import UIKit

class StatsViewController: UIViewController {

    
    var playingTeam = teamClass (name: "xxxxxx")
    
    //outlets for all textfeilds on the stats page
    @IBOutlet weak var firstPlace: UITextField!
    @IBOutlet weak var secondPlace: UITextField!
    @IBOutlet weak var thirdPlace: UITextField!
    @IBOutlet weak var fourthPlace: UITextField!
    @IBOutlet weak var fifthPlace: UITextField!
    @IBOutlet weak var sixthPlace: UITextField!
    @IBOutlet weak var seventhPlace: UITextField!
    @IBOutlet weak var oneTry: UITextField!
    @IBOutlet weak var twoTries: UITextField!
    @IBOutlet weak var threeTries: UITextField!
    @IBOutlet weak var fourTries: UITextField!
    @IBOutlet weak var fiveTries: UITextField!
    @IBOutlet weak var sixTries: UITextField!
    @IBOutlet weak var sevenTries: UITextField!
    @IBOutlet weak var eightTries: UITextField!
    @IBOutlet weak var gamesLost: UITextField!
    @IBOutlet weak var average: UITextField!
    @IBOutlet weak var totalGamesPlayed: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
