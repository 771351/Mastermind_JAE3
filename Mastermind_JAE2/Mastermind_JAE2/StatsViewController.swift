//
//  StatsViewController.swift
//  Mastermind_JAE2
//
//  Created by Jack Burright on 4/28/20.
//  Copyright © 2020 BURRIGHT, JACK. All rights reserved.
//

import UIKit

class StatsViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    
    var Team1 = teamClass (name: "xxxxxx")
    var Team2 = teamClass (name: "xxxxxx")
    var Team3 = teamClass (name: "xxxxxx")
    var Team4 = teamClass (name: "xxxxxx")
    var Team5 = teamClass (name: "xxxxxx")
    var Team6 = teamClass (name: "xxxxxx")
    var Team7 = teamClass (name: "xxxxxx")
    var Team8 = teamClass (name: "xxxxxx")
    var Team9 = teamClass (name: "xxxxxx")
    var Team10 = teamClass (name: "xxxxxx")
    
    
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
    
    @IBOutlet weak var teamsPickerView: UIPickerView!
    
      lazy var teamlist = [Team1, Team2, Team3, Team4, Team5, Team6, Team7, Team8, Team9, Team10]
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
           return 1
       }
       
    func pickerView( _ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
           return teamlist.count
           
       }
       func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        teamlist[row].teamName
        }
        func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
       }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.teamsPickerView.delegate = self
        self.teamsPickerView.dataSource = self
        
        firstPlace.text = Team1.teamName
        
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
