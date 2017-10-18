//
//  StoryOutput.swift
//  SillyStories-Cutler
//
//  Created by Kristen Cutler on 9/26/17.
//  Copyright © 2017 Kristen Cutler. All rights reserved.
//

import UIKit

class StoryOutput: UIViewController {
    
    var storyNumber:Int = 0
    var inputOne:String = ""
    var inputTwo:String = ""
    var inputThree:String = ""

    @IBOutlet weak var resultStory: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if (storyNumber == 0) {
            resultStory.text = "Welcome to my bed and breakfast, \(inputOne)! I am very pleased to have you here. If you go downstairs you will see my many cats and the perfect space for you to \(inputTwo). I think you will find the food and energy here is \(inputThree) and your overall stay delightful." }
        if (storyNumber == 1) {
            resultStory.text = "Congratulations! You have won a trip to an outdoor survival challenge with \(inputOne). Due to unforseen weather, you will stay \(inputTwo) an igloo. Everyday you will be presented with a \(inputThree) task to figure out with your partner. Best of luck!" }
        if (storyNumber == 2) {
          resultStory.text = "Uh oh! It looks like you have \(inputOne) into an alternate universe called Candyland. This is not a safe place. You must \(inputTwo) through the rainbow trail before chocolate fudge eats you alive. Once you reach the end of the trail, fill up the \(inputThree) with vegetables and throw it at the fudge to break free." }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
     */

}
