//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by tom on 20/09/16.
//  Copyright © 2016 tom. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet weak var coolTableView: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        coolTableView.dataSource = self
        coolTableView.delegate = self
        emojis = makeEmojiArray()
        
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
        
    }
    

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojiArray() -> [Emoji] {
        
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😀"
        emoji1.category = "Smiley"
        emoji1.birthYear = 2006
        emoji1.definition = "Smile"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "🙁"
        emoji2.category = "Smiley"
        emoji2.birthYear = 2009
        emoji2.definition = "Not nice"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "🐹"
        emoji3.category = "Animal"
        emoji3.birthYear = 2011
        emoji3.definition = "I'm a cute hamster"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "👠"
        emoji4.category = "Others"
        emoji4.birthYear = 2014
        emoji4.definition = "High heels - party on!"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "💪"
        emoji5.category = "Thing"
        emoji5.birthYear = 2015
        emoji5.definition = "May the force be with you!"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, ]
        
    }

}
