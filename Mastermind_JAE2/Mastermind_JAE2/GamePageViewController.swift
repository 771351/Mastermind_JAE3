//
//  pickerviewclass.swift
//  Mastermind_JAE2
//
//  Created by BURRIGHT, JACK on 2/4/20.
//  Copyright © 2020 BURRIGHT, JACK. All rights reserved.
//

import UIKit

class GamePageViewController: UIViewController, UIPickerViewDataSource,UIPickerViewDelegate {

    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var num1guess1: UILabel!
    @IBOutlet weak var num1guess2: UILabel!
    @IBOutlet weak var num1guess3: UILabel!
    @IBOutlet weak var num2guess1: UILabel!
    @IBOutlet weak var num2guess2: UILabel!
    @IBOutlet weak var num2guess3: UILabel!
    @IBOutlet weak var num3guess1: UILabel!
    @IBOutlet weak var num3guess2: UILabel!
    @IBOutlet weak var num3guess3: UILabel!
    @IBOutlet weak var num4guess1: UILabel!
    @IBOutlet weak var num4guess2: UILabel!
    @IBOutlet weak var num4guess3: UILabel!
    @IBOutlet weak var num5guess1: UILabel!
    @IBOutlet weak var num5guess2: UILabel!
    @IBOutlet weak var num5guess3: UILabel!
    @IBOutlet weak var num6guess1: UILabel!
    @IBOutlet weak var num6guess2: UILabel!
    @IBOutlet weak var num6guess3: UILabel!
    @IBOutlet weak var num7guess1: UILabel!
    @IBOutlet weak var num7guess2: UILabel!
    @IBOutlet weak var num7guess3: UILabel!
    @IBOutlet weak var num8guess1: UILabel!
    @IBOutlet weak var num8guess2: UILabel!
    @IBOutlet weak var num8guess3: UILabel!
    
    @IBOutlet weak var Answer1: UILabel!
    @IBOutlet weak var Answer2: UILabel!
    @IBOutlet weak var Answer3: UILabel!
    @IBOutlet weak var Answer4: UILabel!
    @IBOutlet weak var Answer5: UILabel!
    @IBOutlet weak var Answer6: UILabel!
    @IBOutlet weak var Answer7: UILabel!
    @IBOutlet weak var Answer8: UILabel!
    @IBOutlet weak var youWin: UIView!
    
    @IBOutlet weak var youLose: UIView!
    @IBOutlet weak var winviewbackground: UIView!
    
    @IBAction func close(_ sender: Any) {
        youWin.frame.origin.x = -1000
        winviewbackground.alpha = 0
    }
    @IBAction func closelose(_ sender: Any) {
        youLose.frame.origin.x = 1000
        winviewbackground.alpha = 0
    }
    
    
    var firstA = ""
    var secondA = ""
    var thirdA = ""
    var numOfGuesses = 0
    //creates an asnwer for the game
    func CorrectAnswer()
    {
        let firstAnswer = Int.random(in: 0 ... 9 )
            var secondAnswer = Int.random(in: 0 ... 9)
            var thirdAnswer = Int.random(in: 0 ... 9)
                    
            while firstAnswer == secondAnswer
                {
                    secondAnswer = Int.random(in: 0 ... 9)
                }
                         
            while firstAnswer == thirdAnswer || secondAnswer == thirdAnswer
                {
                    thirdAnswer = Int.random(in: 0 ... 9)
                }
                    firstA = String(firstAnswer)
                    secondA = String(secondAnswer)
                    thirdA = String(thirdAnswer)

    }
    //this function will check if the guess had the right numbers in the right place. If they do it will return a string with the filled in circles
    func CorrectPlacement(array:[String]) -> String
    {
        var string = ""
        let correct = "●"
            if (array[0] == firstA)
            {
                string = string + correct
            }
            if (array[1] == secondA)
            {
                 string = string + correct
            }
            if (array[2] == thirdA)
            {
                 string = string + correct
            }
        return string
    }
    //this function will check if the guess had the right numbers in the in the guess(not right place). If they do it will return a string with open circles
    func CorrectNumber(array:[String]) -> String
    {
        var string = ""
        let correct = "○"
            if (array[0] == secondA || array[0] == thirdA )
            {
                string = string + correct
                
            }
            if (array[1] == firstA || array[1] == thirdA)
            {
                string = string + correct
            }
            if (array[2] == firstA || array[2] == secondA)
            {
                string = string + correct
            }
        return string
    }
    // will hold guesses
    var guesses = [["","",""],["","",""],["","",""],["","",""],["","",""],["","",""],["","",""],["","",""],["","",""]]
    //used in picker view
    let nums = [["0","1","2","3","4","5","6","7","8","9"],["0","1","2","3","4","5","6","7","8","9"],["0","1","2","3","4","5","6","7","8","9"]]
    //number of collums in game pickerview
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    //what does in the collums
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return nums[component][row]
    }
    //number of rows in a collum
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return nums[component].count
    }
    //used to put guesses in the right row
    var count = 0
    
//takes guess that is entered in pickerview and locks it into place. Then moves the pickerview numbers to the next row
    @IBAction func goButton(_ sender: Any) {
        //prints answer
        print(firstA + secondA + thirdA)
        
        //checks if the game should be over, checks if there is a number in all the slots
        if guesses[count][0] != "" && guesses[count][1] != "" && guesses[count][2] != "" && count < 8
{
         //puts up clue?
        count = count + 1
            
            if count == 1
                   {
                       Answer1.text = CorrectPlacement(array: guesses[0]) + CorrectNumber(array: guesses[0])
                   }
            if count == 2
                   {
                       Answer2.text = CorrectPlacement(array: guesses[1]) + CorrectNumber(array: guesses[1])
                   }
            if count == 3
                   {
                          Answer3.text = CorrectPlacement(array: guesses[2]) + CorrectNumber(array: guesses[2])
                   }
            if count == 4
                   {
                          Answer4.text = CorrectPlacement(array: guesses[3]) + CorrectNumber(array: guesses[3])
                   }
            if count == 5
                   {
                          Answer5.text = CorrectPlacement(array: guesses[4]) + CorrectNumber(array: guesses[4])
                   }
            if count == 6
                   {
                          Answer6.text = CorrectPlacement(array: guesses[5]) + CorrectNumber(array: guesses[5])
                   }
            if count == 7
                   {
                          Answer7.text = CorrectPlacement(array: guesses[6]) + CorrectNumber(array: guesses[6])
                   }
            if count == 8
                   {
                          Answer8.text = CorrectPlacement(array: guesses[7]) + CorrectNumber(array: guesses[7])
                   }
            
}
       //ends game if the answer is correct
        if (Answer1.text == "●●●" || Answer2.text == "●●●" || Answer3.text == "●●●" || Answer4.text == "●●●" || Answer5.text == "●●●" || Answer6.text == "●●●" || Answer7.text == "●●●" || Answer8.text == "●●●" )
                     {
                         count = 9
                     }
        //resets everything getting ready for the next game
        if count >= 8
        {
            for row in (0...7)
                {
                for col in (0...2)
                    {
                        let nothing = ""
                            guesses[row][col] = nothing
                    }
                                      
                }
                num1guess1.text = ""
                num1guess2.text = ""
                num1guess3.text = ""
                num2guess1.text = ""
                num2guess2.text = ""
                num2guess3.text = ""
                num3guess1.text = ""
                num3guess2.text = ""
                num3guess3.text = ""
                num4guess1.text = ""
                num4guess2.text = ""
                num4guess3.text = ""
                num5guess1.text = ""
                num5guess2.text = ""
                num5guess3.text = ""
                num6guess1.text = ""
                num6guess2.text = ""
                num6guess3.text = ""
                num7guess1.text = ""
                num7guess2.text = ""
                num7guess3.text = ""
                num8guess1.text = ""
                num8guess2.text = ""
                num8guess3.text = ""
                Answer1.text = ""
                Answer2.text = ""
                Answer3.text = ""
                Answer4.text = ""
                Answer5.text = ""
                Answer6.text = ""
                Answer7.text = ""
                Answer8.text = ""
            //popups to say you lost
            if count == 8
            {
                youLose.frame.origin.x = 178.11
               winviewbackground.alpha = 0.8
                count = 0
                CorrectAnswer()
                
         
            }
            //popup to say you won
            if count == 9
            {
                youWin.frame.origin.x = 192
                CorrectAnswer()
                count = 0
                winviewbackground.alpha = 0.8
            }
        }
        
    }
    //clears game and gets ready for a new one
    @IBAction func clearButton(_ sender: Any) {
        
        for row in (0...7)
                       {
                       for col in (0...2)
                           {
                               let nothing = ""
                                   guesses[row][col] = nothing
                           }
                                             
                       }
                       num1guess1.text = ""
                       num1guess2.text = ""
                       num1guess3.text = ""
                       num2guess1.text = ""
                       num2guess2.text = ""
                       num2guess3.text = ""
                       num3guess1.text = ""
                       num3guess2.text = ""
                       num3guess3.text = ""
                       num4guess1.text = ""
                       num4guess2.text = ""
                       num4guess3.text = ""
                       num5guess1.text = ""
                       num5guess2.text = ""
                       num5guess3.text = ""
                       num6guess1.text = ""
                       num6guess2.text = ""
                       num6guess3.text = ""
                       num7guess1.text = ""
                       num7guess2.text = ""
                       num7guess3.text = ""
                       num8guess1.text = ""
                       num8guess2.text = ""
                       num8guess3.text = ""
                       Answer1.text = ""
                       Answer2.text = ""
                       Answer3.text = ""
                       Answer4.text = ""
                       Answer5.text = ""
                       Answer6.text = ""
                       Answer7.text = ""
                       Answer8.text = ""
        count = 0
        CorrectAnswer()
        
    }
    
    //everytime the pickerview gets touched it goes through this function
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if count == 0{
            //puts guesses in label row one
              if component == 0  {
                num1guess1.text = nums[component][row]
                guesses[0][0] = nums[component][row]
           
        }
        if component == 1  {
            num1guess2.text = nums[component][row]
           guesses[0][1] = nums[component][row]
        }
        if component == 2  {
            num1guess3.text = nums[component][row]
            guesses[0][2] = nums[component][row]
         
        }
            
        //second row
        }
        if count == 1{
        if component == 0  {
            num2guess1.text = nums[component][row]
            guesses[1][0] = nums[component][row]
           
        }
        if component == 1  {
            num2guess2.text = nums[component][row]
            guesses[1][1] = nums[component][row]
           
        }
        if component == 2  {
            num2guess3.text = nums[component][row]
            guesses[1][2] = nums[component][row]
           
        }
    
        }
        //third row
        if count == 2{
            if component == 0  {
                num3guess1.text = nums[component][row]
                guesses[2][0] = nums[component][row]
               
            }
            if component == 1  {
                num3guess2.text = nums[component][row]
                guesses[2][1] = nums[component][row]
               
            }
            if component == 2  {
                num3guess3.text = nums[component][row]
                guesses[2][2] = nums[component][row]
               
            }
        
            }
        //fourth row
        if count == 3{
            if component == 0  {
                num4guess1.text = nums[component][row]
                guesses[3][0] = nums[component][row]
               
            }
            if component == 1  {
                num4guess2.text = nums[component][row]
                guesses[3][1] = nums[component][row]
               
            }
            if component == 2  {
                num4guess3.text = nums[component][row]
                guesses[3][2] = nums[component][row]
               
            }
        
            }
        //fifth row
        if count == 4{
            if component == 0  {
                num5guess1.text = nums[component][row]
                guesses[4][0] = nums[component][row]
               
            }
            if component == 1  {
                num5guess2.text = nums[component][row]
                guesses[4][1] = nums[component][row]
               
            }
            if component == 2  {
                num5guess3.text = nums[component][row]
                guesses[4][2] = nums[component][row]
               
            }
        
            }
        //sixth row
        if count == 5{
            if component == 0  {
                num6guess1.text = nums[component][row]
                guesses[5][0] = nums[component][row]
               
            }
            if component == 1  {
                num6guess2.text = nums[component][row]
                guesses[5][1] = nums[component][row]
               
            }
            if component == 2  {
                num6guess3.text = nums[component][row]
                guesses[5][2] = nums[component][row]
               
            }
        
            }
        //seveth row
        if count == 6{
            if component == 0  {
                num7guess1.text = nums[component][row]
                guesses[6][0] = nums[component][row]
               
            }
            if component == 1  {
                num7guess2.text = nums[component][row]
                guesses[6][1] = nums[component][row]
               
            }
            if component == 2  {
                num7guess3.text = nums[component][row]
                guesses[6][2] = nums[component][row]
               
            }
        
            }
        //eighth row
        if count == 7{
            if component == 0  {
                num8guess1.text = nums[component][row]
                guesses[7][0] = nums[component][row]
               
            }
            if component == 1  {
                num8guess2.text = nums[component][row]
                guesses[7][1] = nums[component][row]
               
            }
            if component == 2  {
                num8guess3.text = nums[component][row]
                guesses[7][2] = nums[component][row]
               
            }
            
        
            }
        //sets labels equal to 0
        if count == 8
        {
            
            num1guess1.text = ""
            num1guess2.text = ""
            num1guess3.text = ""
            num2guess1.text = ""
            num2guess2.text = ""
            num2guess3.text = ""
            num3guess1.text = ""
            num3guess2.text = ""
            num3guess3.text = ""
            num4guess1.text = ""
            num4guess2.text = ""
            num4guess3.text = ""
            num5guess1.text = ""
            num5guess2.text = ""
            num5guess3.text = ""
            num6guess1.text = ""
            num6guess2.text = ""
            num6guess3.text = ""
            num7guess1.text = ""
            num7guess2.text = ""
            num7guess3.text = ""
            num8guess1.text = ""
            num8guess2.text = ""
            num8guess3.text = ""
        }
        
    }
    //creates an answer everytime the page is opened
    override func viewDidLoad() {
        super.viewDidLoad()
        youWin.layer.cornerRadius = 40
        youLose.layer.cornerRadius = 40
          CorrectAnswer()
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
