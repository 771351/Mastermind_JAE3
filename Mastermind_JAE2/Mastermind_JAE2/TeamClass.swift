
//  Team Class.swift
//  Mastermind_JAE2
//
//  Created by BURRIGHT, JACK on 1/7/20.
//  Copyright © 2020 BURRIGHT, JACK. All rights reserved.
//

import Foundation
import os.log
class teamClass : Codable {
    var gamesP : Int
    var gamesW : Int
    var gamesL : Int
    var aver : Int
    var won1 : Int
    var won2 : Int
    var won3 : Int
    var won4 : Int
    var won5 : Int
    var won6 : Int
    var won7 : Int
    var won8 : Int
    var teamName : String
    var gameGuess : Int
    var everyGuess : Int
    //constructor
    init(name: String){
        self.teamName = name
        self.gamesP = 0
        self.gamesW = 0
        self.gamesL = 0
        self.aver = 0
        self.won1 = 0
        self.won2 = 0
        self.won3 = 0
        self.won4 = 0
        self.won5 = 0
        self.won6 = 0
        self.won7 = 0
        self.won8 = 0
        self.gameGuess = 0
        self.everyGuess = 0
    }
    
    //changes team name
    func changename(name: String){
        
        self.teamName = name
    }
    //changes amount of games played
    func changegamesP(){
        self.gamesP = self.gamesP + 1
    }
    //changes amount of games won
    func changegamesW(){
           self.gamesW = self.gamesW + 1
       }
    //changes amount of games lost for a team
    func changegamesL(){
           self.gamesL = self.gamesL + 1
       }
    //changes the teams average
    func changeaver(){
        self.aver = self.everyGuess/self.gamesP
          }
    
    //will add one game played, updates total guesses and team average
    func gameDONE(gamesP: Int, aver: Int, gameGuess: Int){
        
        self.gamesP = gamesP+1
        
        if (self.gameGuess == 1){
            self.won1 = self.won1+1
        }
        else if (self.gameGuess == 2){
            self.won2 = self.won2+1
        }
        else if (self.gameGuess == 3){
            self.won3 = self.won3+1
        }
        else if (self.gameGuess == 4){
            self.won4 = self.won4+1
        }
        else if (self.gameGuess == 5){
            self.won5 = self.won5+1
        }
        else if (self.gameGuess == 6){
            self.won6 = self.won6+1
        }
        else if (self.gameGuess == 7){
            self.won7 = self.won7+1
        }
        else if (self.gameGuess == 8){
            self.won8 = self.won8+1
        }
        
        self.everyGuess = self.everyGuess + gameGuess
        self.aver = (self.everyGuess / gamesP)
 
    }
    //persistant data saving stuff
    func archive(fileName: String) {
        let documentsDirectory = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
        let archiveURL = documentsDirectory.appendingPathComponent(fileName)
        do {
            let encodedData = try PropertyListEncoder().encode(self)
            let isSuccessfulSave = NSKeyedArchiver.archiveRootObject(encodedData, toFile: archiveURL.path)
            if isSuccessfulSave {
                os_log("Data successfully saved to file.", log: OSLog.default, type: .debug)
            } else {
                os_log("Failed to save data...", log: OSLog.default, type: .error)
            }
        } catch {
            os_log("Failed to save data...", log: OSLog.default, type: .error)
        }
    }
    
    
    //persistant data restoring variables
        func restore(fileName: String) {
            let documentsDirectory = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
            let archiveURL = documentsDirectory.appendingPathComponent(fileName)
            if let recoveredDataCoded = NSKeyedUnarchiver.unarchiveObject(withFile: archiveURL.path) as? Data {
                do {
                    // *** Replace "teamClass" on the next line with the name of the class to be persistent. ***
                    let recoveredData = try PropertyListDecoder().decode(teamClass.self, from: recoveredDataCoded)
                    os_log("Data successfully recovered from file.", log: OSLog.default, type: .debug)
                    // *** Replace all the assignment statements BELOW to "restore" all properties of the object ***
                     gamesP = recoveredData.gamesP
                    gamesW = recoveredData.gamesW
                    gamesL = recoveredData.gamesL
                    aver = recoveredData.aver
                    won1 = recoveredData.won1
                    won2 = recoveredData.won2
                    won3 = recoveredData.won3
                    won4 = recoveredData.won4
                    won5 = recoveredData.won5
                    won6 = recoveredData.won6
                    won7 = recoveredData.won7
                    won8 = recoveredData.won8
                    teamName = recoveredData.teamName
                    gameGuess = recoveredData.gameGuess
                    everyGuess = recoveredData.everyGuess

                    // *** Replace all the assignment statements ABOVE to "restore" all properties of the object ***
                } catch {
                    os_log("Failed to recover data", log: OSLog.default, type: .error)
                }
            } else {
                os_log("Failed to recover data", log: OSLog.default, type: .error)
            }
        }
    }

    
    
    
    

