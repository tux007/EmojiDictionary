//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by tom on 20/09/16.
//  Copyright © 2016 tom. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var definitionLabel: UILabel!
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    var emoji = "NO EMOJI"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        if emoji == "🐹" {
            definitionLabel.text = "I'm a cute hamster"
        }
        
        if emoji == "😀" {
            definitionLabel.text = "Smile"
        }
        
        if emoji == "🙁" {
            definitionLabel.text = "Not nice"
        }
        
        if emoji == "👠" {
            definitionLabel.text = "High heels - party on!"
        }
        
        if emoji == "💪" {
            definitionLabel.text = "May the force be with you!"
        }
        
        if emoji == "🖕" {
            definitionLabel.text = "F* you"
        }
        
        if emoji == "⚽️" {
            definitionLabel.text = "Goaaaaaaaaaaal"
        }
        
        if emoji == "💡" {
            definitionLabel.text = "Ahaaaaaaaa"
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
