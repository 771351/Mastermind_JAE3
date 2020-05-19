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
    var selectedTeam = teamClass (name: "xxxxxx")
    
    var noTeams = teamClass (name: "there are no teams")
    
    
    //outlets for all textfeilds on the stats page
 
   
    @IBOutlet weak var oneTry: UILabel!
    @IBOutlet weak var twoTries: UILabel!
    @IBOutlet weak var threeTries: UILabel!
    @IBOutlet weak var fourTries: UILabel!
    @IBOutlet weak var fiveTries: UILabel!
    @IBOutlet weak var sixTries: UILabel!
    @IBOutlet weak var sevenTries: UILabel!
    @IBOutlet weak var eightTries: UILabel!
    @IBOutlet weak var totalGamesPlayed: UILabel!
    @IBOutlet weak var gamesLost: UILabel!
    @IBOutlet weak var average: UILabel!
    @IBOutlet weak var firstPlace: UILabel!
    @IBOutlet weak var secondPlace: UILabel!
    @IBOutlet weak var thirdPlace: UILabel!
    @IBOutlet weak var fourthPlace: UILabel!
    @IBOutlet weak var fifthPlace: UILabel!
    @IBOutlet weak var firstAverage: UILabel!
    @IBOutlet weak var secondAverage: UILabel!
    @IBOutlet weak var thirdAverage: UILabel!
    @IBOutlet weak var fourthAverage: UILabel!
    @IBOutlet weak var fifthAverage: UILabel!
    @IBOutlet weak var firstGP: UILabel!
    @IBOutlet weak var secondGP: UILabel!
    @IBOutlet weak var thirdGP: UILabel!
    @IBOutlet weak var fourthGP: UILabel!
    @IBOutlet weak var fifthGP: UILabel!
    
    @IBOutlet weak var teamsPickerView: UIPickerView!
    var averageString : String = ""
    var gamesPString : String = ""
    var gamesLString : String = ""
    var won1String :  String = ""
    var won2String :  String = ""
    var won3String :  String = ""
    var won4String :  String = ""
    var won5String :  String = ""
    var won6String :  String = ""
    var won7String :  String = ""
    var won8String :  String = ""
    var firstAverageString : String = ""
       var secondAverageString : String = ""
       var thirdAverageString : String = ""
       var fourthAverageString : String = ""
       var fifthAverageString : String = ""
       var firstGPString : String = ""
       var secondGPString : String = ""
       var thirdGPString : String = ""
       var fourthGPString : String = ""
       var fifthGPString : String = ""
        var whatteamselected = "Team1"
    var intwhatteamselected = 1
    func reloadAllComponents(){}
    
    
    @IBAction func deleteTeam(_ sender: Any) {
        print(whatteamselected)
        print(selectedTeam.teamName)
        selectedTeam.freshteam()
        selectedTeam.archive(fileName: whatteamselected)
        sortedTeams = []
        viewDidLoad()
        averageString = String(selectedTeam.aver)
        average.text = averageString
        gamesPString = String(selectedTeam.gamesP)
        totalGamesPlayed.text = gamesPString
        gamesLString = String(selectedTeam.gamesL)
        gamesLost.text = gamesLString
        won1String = String(selectedTeam.won1)
        oneTry.text = won1String
        won2String = String(selectedTeam.won2)
        twoTries.text = won2String
        won3String = String(selectedTeam.won3)
        threeTries.text = won3String
        won4String = String(selectedTeam.won4)
        fourTries.text = won4String
        won5String = String(selectedTeam.won5)
        fiveTries.text = won5String
        won6String = String(selectedTeam.won6)
        sixTries.text = won6String
        won7String = String(selectedTeam.won7)
        sevenTries.text = won7String
        won8String = String(selectedTeam.won8)
        eightTries.text = won8String
    
        
    }
    
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
            selectedTeam = teamlist[row]
            whatteamselected = "Team" + String(row + 1)
            averageString = String(selectedTeam.aver)
            average.text = averageString
            gamesPString = String(selectedTeam.gamesP)
            totalGamesPlayed.text = gamesPString
            gamesLString = String(selectedTeam.gamesL)
            gamesLost.text = gamesLString
            won1String = String(selectedTeam.won1)
            oneTry.text = won1String
            won2String = String(selectedTeam.won2)
            twoTries.text = won2String
            won3String = String(selectedTeam.won3)
            threeTries.text = won3String
            won4String = String(selectedTeam.won4)
            fourTries.text = won4String
            won5String = String(selectedTeam.won5)
            fiveTries.text = won5String
            won6String = String(selectedTeam.won6)
            sixTries.text = won6String
            won7String = String(selectedTeam.won7)
            sevenTries.text = won7String
            won8String = String(selectedTeam.won8)
            eightTries.text = won8String
       }
   
    //leaderboard
    var sortedTeams : [teamClass] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        averageString = String(selectedTeam.aver)
        average.text = averageString
        gamesPString = String(selectedTeam.gamesP)
        totalGamesPlayed.text = gamesPString
        gamesLString = String(selectedTeam.gamesL)
        gamesLost.text = gamesLString
        won1String = String(selectedTeam.won1)
        oneTry.text = won1String
        won2String = String(selectedTeam.won2)
        twoTries.text = won2String
        won3String = String(selectedTeam.won3)
        threeTries.text = won3String
        won4String = String(selectedTeam.won4)
        fourTries.text = won4String
        won5String = String(selectedTeam.won5)
        fiveTries.text = won5String
        won6String = String(selectedTeam.won6)
        sixTries.text = won6String
        won7String = String(selectedTeam.won7)
        sevenTries.text = won7String
        won8String = String(selectedTeam.won8)
        eightTries.text = won8String
        
        
              
        self.teamsPickerView.delegate = self
        self.teamsPickerView.dataSource = self
        
        for n in teamlist{
        if (n.aver > 0){
            sortedTeams.append(n)
         }
        }

        sortedTeams = sortedTeams.sorted {
            $0.aver <= $1.aver
        }
        if sortedTeams.isEmpty {
            sortedTeams.append(noTeams)
            
        }
        if (sortedTeams.count == 1){
            firstPlace.text = sortedTeams[0].teamName
            secondPlace.text = ""
            thirdPlace.text = ""
            fourthPlace.text = ""
            fifthPlace.text = ""
            firstAverageString = String(sortedTeams[0].aver)
            firstAverage.text = firstAverageString
            secondAverage.text = ""
            thirdAverage.text = ""
            fourthAverage.text = ""
            fifthAverage.text = ""
            firstGPString = String(sortedTeams[0].gamesP)
            firstGP.text = firstGPString
            secondGP.text = ""
            thirdGP.text = ""
            fourthGP.text = ""
            fifthGP.text = ""
                
        }
        else if (sortedTeams.count == 2){
            firstPlace.text = sortedTeams[0].teamName
            secondPlace.text = sortedTeams[1].teamName
            thirdPlace.text = ""
            fourthPlace.text = ""
            fifthPlace.text = ""
            firstAverageString = String(sortedTeams[0].aver)
            firstAverage.text = firstAverageString
            secondAverageString = String(sortedTeams[1].aver)
            secondAverage.text = secondAverageString
            thirdAverage.text = ""
            fourthAverage.text = ""
            fifthAverage.text = ""
            firstGPString = String(sortedTeams[0].gamesP)
            firstGP.text = firstGPString
            secondGPString = String(sortedTeams[1].gamesP)
            secondGP.text = secondGPString
            thirdGP.text = ""
            fourthGP.text = ""
            fifthGP.text = ""
        }
        else if (sortedTeams.count == 3){
            firstPlace.text = sortedTeams[0].teamName
            secondPlace.text = sortedTeams[1].teamName
            thirdPlace.text = sortedTeams[2].teamName
            fourthPlace.text = ""
            fifthPlace.text = ""
            firstAverageString = String(sortedTeams[0].aver)
            firstAverage.text = firstAverageString
            secondAverageString = String(sortedTeams[1].aver)
            secondAverage.text = secondAverageString
            thirdAverageString = String(sortedTeams[2].aver)
            thirdAverage.text = thirdAverageString
            fourthAverage.text = ""
            fifthAverage.text = ""
            firstGPString = String(sortedTeams[0].gamesP)
            firstGP.text = firstGPString
            secondGPString = String(sortedTeams[1].gamesP)
            secondGP.text = secondGPString
            thirdGPString = String(sortedTeams[2].gamesP)
            thirdGP.text = thirdGPString
            fourthGP.text = ""
            fifthGP.text = ""
        }
        else if (sortedTeams.count == 4){
            firstPlace.text = sortedTeams[0].teamName
            secondPlace.text = sortedTeams[1].teamName
            thirdPlace.text = sortedTeams[2].teamName
            fourthPlace.text = sortedTeams[3].teamName
            fifthPlace.text = ""
            firstAverageString = String(sortedTeams[0].aver)
            firstAverage.text = firstAverageString
            secondAverageString = String(sortedTeams[1].aver)
            secondAverage.text = secondAverageString
            thirdAverageString = String(sortedTeams[2].aver)
            thirdAverage.text = thirdAverageString
            fourthAverageString = String(sortedTeams[3].aver)
            fourthAverage.text = fourthAverageString
            fifthAverage.text = ""
            firstGPString = String(sortedTeams[0].gamesP)
            firstGP.text = firstGPString
            secondGPString = String(sortedTeams[1].gamesP)
            secondGP.text = secondGPString
            thirdGPString = String(sortedTeams[2].gamesP)
            thirdGP.text = thirdGPString
            fourthGPString = String(sortedTeams[3].gamesP)
            fourthGP.text = fourthGPString
            fifthGP.text = ""
            
        }
        else {
            firstPlace.text = sortedTeams[0].teamName
            secondPlace.text = sortedTeams[1].teamName
            thirdPlace.text = sortedTeams[2].teamName
            fourthPlace.text = sortedTeams[3].teamName
            fifthPlace.text = sortedTeams[4].teamName
            firstAverageString = String(sortedTeams[0].aver)
            firstAverage.text = firstAverageString
            secondAverageString = String(sortedTeams[1].aver)
            secondAverage.text = secondAverageString
            thirdAverageString = String(sortedTeams[2].aver)
            thirdAverage.text = thirdAverageString
            fourthAverageString = String(sortedTeams[3].aver)
            fourthAverage.text = fourthAverageString
            fifthAverageString = String(sortedTeams[4].aver)
            fifthAverage.text = fifthAverageString
            firstGPString = String(sortedTeams[0].gamesP)
            firstGP.text = firstGPString
            secondGPString = String(sortedTeams[1].gamesP)
            secondGP.text = secondGPString
            thirdGPString = String(sortedTeams[2].gamesP)
            thirdGP.text = thirdGPString
            fourthGPString = String(sortedTeams[3].gamesP)
            fourthGP.text = fourthGPString
            fifthGPString = String(sortedTeams[4].gamesP)
            fifthGP.text = fifthGPString
        }
        
        


        }
}
        
      
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


