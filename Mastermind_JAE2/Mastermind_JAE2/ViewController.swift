//
//  ViewController.swift
//  Mastermind_JAE2
//
//  Created by BURRIGHT, JACK on 1/13/20.
//  Copyright © 2020 BURRIGHT, JACK. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return teamlist.count
        
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        teamlist[row].teamName
    }
    var selectedTeam = teamClass (name: "xxxxxx")
    func reloadAllComponents(){}
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        selectedTeam = teamlist[row]
    }
    

  
   
    @IBOutlet weak var newName3: UITextField!
   
    @IBOutlet weak var pickerviewteam: UIPickerView!
    @IBOutlet var Totalview: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        ViewTNa.layer.cornerRadius = 40
        Team1.restore(fileName: "Team1")
        Team2.restore(fileName: "Team2")
        Team3.restore(fileName: "Team3")
        Team4.restore(fileName: "Team4")
        Team5.restore(fileName: "Team5")
        Team6.restore(fileName: "Team6")
        Team7.restore(fileName: "Team7")
        Team8.restore(fileName: "Team8")
        Team9.restore(fileName: "Team9")
        Team10.restore(fileName: "Team10")
        selectedTeam.restore(fileName: "Team1")
    
    }
    //popup to add new team
    @IBOutlet weak var ViewTNa: UIView!
    
    @IBOutlet weak var backgroundview: UIView!
    @IBAction func showPopUp(_ sender: UIButton) {
        ViewTNa.frame.origin.x = 192
        backgroundview.alpha = 0.7
       
    }
    //moves popup off screen
    @IBAction func closebuttom (_ sender: Any) {
        ViewTNa.frame.origin.x = -500
        backgroundview.alpha = 0
        newName3.text = ""
        
    }
    //moves popup off screen
    @IBAction func goteamname(_ sender: Any) {
        if newName3.text != "" {
        doesTeamNameWork(newteamNAME: newName3.text!)
            ViewTNa.frame.origin.x = -500
            backgroundview.alpha = 0
            pickerviewteam.reloadAllComponents()
            newName3.text = ""
        }
        
    }
    
    
    
    //timer popup
    

    //popup to rules
    @IBAction func showTPopUp(_ sender: UIButton) {
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "sbTPopUpID") as! ThirdPopUpViewController
        self.addChild(popOverVC)
        popOverVC.view.frame = self.view.frame
        self.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParent: self)
    }
      //10 teams
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
    //list of teams
    lazy var teamlist = [Team1, Team2, Team3, Team4, Team5, Team6, Team7, Team8, Team9, Team10]
        

        //checks if there is a team that doesn't have a name and if there is it updates the team name
        func doesTeamNameWork(newteamNAME : String)
        {
        
        if Team1.teamName == "xxxxxx"{
            Team1.changename(name: newteamNAME)
                print(1)
            Team1.archive(fileName: "Team1")
                
            }
            else if Team2.teamName == "xxxxxx"{
                Team2.changename(name: newteamNAME)
                print(2)
            Team2.archive(fileName: "Team2")
                
            }
            else if Team3.teamName == "xxxxxx"{
                Team3.changename(name: newteamNAME)
                print(3)
            Team3.archive(fileName: "Team3")
                
            }
            else if Team4.teamName == "xxxxxx"{
                Team4.changename(name: newteamNAME)
                print(4)
                Team4.archive(fileName: "Team4")
            }
            else if Team5.teamName == "xxxxxx"{
                Team5.changename(name: newteamNAME)
                print(5)
                Team5.archive(fileName: "Team5")
            }
            else if Team6.teamName == "xxxxxx"{
                Team6.changename(name: newteamNAME)
                print(6)
                Team6.archive(fileName: "Team6")
            }
            else if Team7.teamName == "xxxxxx"{
                Team7.changename(name: newteamNAME)
                print(7)
                Team7.archive(fileName: "Team7")
            }
            else if Team8.teamName == "xxxxxx"{
                Team8.changename(name: newteamNAME)
                print(8)
                Team8.archive(fileName: "Team8")
            }
            else if Team9.teamName == "xxxxxx"{
                Team9.changename(name: newteamNAME)
                print(9)
                Team9.archive(fileName: "Team9")
            }
            else if Team10.teamName == "xxxxxx"{
                Team10.changename(name: newteamNAME)
                print(10)
                Team10.archive(fileName: "Team10")
            }
            else{
                print("no mo teams!")
              
            }
        }
    
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "team"
        {
        var vc = segue.destination as! GamePageViewController
        vc.playingTeam = selectedTeam 
        }
        else {
            var vc = segue.destination as! StatsViewController
            vc.Team1 = Team1
            vc.Team2 = Team2
            vc.Team3 = Team3
            vc.Team4 = Team4
            vc.Team5 = Team5
            vc.Team6 = Team6
            vc.Team7 = Team7
            vc.Team8 = Team8
            vc.Team9 = Team9
            vc.Team10 = Team10
                       
            
            
        }
    }
       
    
}


