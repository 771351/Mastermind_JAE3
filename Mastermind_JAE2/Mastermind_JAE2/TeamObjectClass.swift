//
//  TeamObjectClass.swift
//  Mastermind_JAE2
//
//  Created by Veldhuis, Emma on 3/11/20.
//  Copyright © 2020 BURRIGHT, JACK. All rights reserved.
//

import Foundation
import UIKit


class teamObjectClass
{
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
            
        }
        else if Team2.teamName == "xxxxxx"{
            Team2.changename(name: newteamNAME)
            print(2)
            
        }
        else if Team3.teamName == "xxxxxx"{
            Team3.changename(name: newteamNAME)
            print(3)
            
        }
        else if Team4.teamName == "xxxxxx"{
            Team4.changename(name: newteamNAME)
            print(4)
            
        }
        else if Team5.teamName == "xxxxxx"{
            Team5.changename(name: newteamNAME)
            print(5)
            
        }
        else if Team6.teamName == "xxxxxx"{
            Team6.changename(name: newteamNAME)
            print(6)
            
        }
        else if Team7.teamName == "xxxxxx"{
            Team7.changename(name: newteamNAME)
            print(7)
            
        }
        else if Team8.teamName == "xxxxxx"{
            Team8.changename(name: newteamNAME)
            print(8)
            
        }
        else if Team9.teamName == "xxxxxx"{
            Team9.changename(name: newteamNAME)
            print(9)
            
        }
        else if Team10.teamName == "xxxxxx"{
            Team10.changename(name: newteamNAME)
            print(10)
            
        }
        else{
            print("no mo teams!")
          
        }
    }
}
