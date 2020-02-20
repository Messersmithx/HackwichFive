//
//  ViewController.swift
//  HackwichFive
//
//  Created by CM Student on 2/20/20.
//  Copyright © 2020 Sam smith. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var bottomLabel: UILabel!
    @IBOutlet weak var theButton: UIButton!
    var currentIndex = 0
    var thisArray = ["chicken", "The Other Chicken", "Carrots", "Fish", "The Other Fish"]
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.topLabel.text = "My Favorite foods"
    }

    
    //Creates a function that will only be called when the created button is pressed
    @IBAction func buttonPressed(_ sender: Any) {
        //Changes the visible text of the top label to the first string in the array
        self.topLabel.text = thisArray[currentIndex]
        //A loop that will iterate through the array while the array still has more data stored
        if (self.currentIndex < thisArray.count) {
            //Updates the current index of the array to the next index/data stored in the array
            currentIndex = currentIndex + 1
            //Changes the title to next and prepares the button to be cancelled later
            theButton.setTitle("Next", for: UIControl.State.normal)
        }
        //If the follwing conditon is not met, the follwing line of code with execute
        else {
            //Disables the button. Will run after if loop is completed.
            (sender as! UIButton).isEnabled=false
            
        }
        
    }
    
}

