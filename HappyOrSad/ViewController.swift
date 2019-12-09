//
//  ViewController.swift
//  HappyOrSad
//
//  Created by Stanley, Trent on 2019-11-20.
//  Copyright © 2019 Stanley, Trent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Properties
    // Outlets
    @IBOutlet weak var phraseInputField: UITextField!
    
    @IBOutlet weak var outputResult: UILabel!
    
    // MARK: Methods
    // Actions go here
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // Analyze the text provided
    @IBAction func analyzeText(_ sender: Any) {
        
        //  Clear out the output label from the last time the Analyze button was pressed
        outputResult.text = ""
        
        // Guard against no input
        guard let phraseInput = phraseInputField.text, phraseInput.count > 0 else {
            outputResult.text = "Please enter a phrase to analyze"
            return
        }
        
        // Make sure the input is not too long
        if phraseInput.count > 255 {
            outputResult.text = "Please enter a phrase with 255 characters or less."
            return
        }
        
        var happyCount = 0
        var sadCount = 0
        
        let happyEmojis = "😃😊🙂😄"
        let sadEmojis = "☹🙁😕😔"
        
        for char in phraseInput {
            print(char)
            
            if happyEmojis.contains(char) {
                happyCount += 1
                
                if sadEmojis.contains(char) {
                    sadCount += 1
                }
            }
            
            
            
        }
        
        
    }
    
}
