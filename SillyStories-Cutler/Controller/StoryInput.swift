//
//  StoryInput.swift
//  SillyStories-Cutler
//
//  Created by Kristen Cutler on 9/26/17.
//  Copyright © 2017 Kristen Cutler. All rights reserved.
//

import UIKit

class StoryInput: UIViewController {

    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    @IBOutlet weak var inputOne: UITextField!
    @IBOutlet weak var inputThree: UITextField!
    @IBOutlet weak var inputTwo: UITextField!
    
    var randomNumber:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI() {
        inputOne.text = ""
        inputTwo.text = ""
        inputThree.text = ""
        
        randomNumber = Int(arc4random_uniform(3))
        
        if (randomNumber == 0) {
            labelOne.text = "Noun"
            labelTwo.text = "Verb"
            labelThree.text = "Adjective"
        }
        if (randomNumber == 1) {
            labelOne.text = "Proper Noun"
            labelTwo.text = "Preposition"
            labelThree.text = "Adverb"
        }
        if (randomNumber == 2) {
            labelOne.text = "Verb (past tense)"
            labelTwo.text = "Verb"
            labelThree.text = "Container"
        }
    }
    
    @IBAction func unwindToStoryOutput(segue: UIStoryboardSegue) {
        updateUI()
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let outputViewController = segue.destination as! StoryOutput
        
        let a = inputOne.text!
        let b = inputTwo.text!
        let c = inputThree.text!
        
        outputViewController.inputOne = a
        outputViewController.inputTwo = b
        outputViewController.inputThree = c
        outputViewController.storyNumber = randomNumber
    }
    

}
