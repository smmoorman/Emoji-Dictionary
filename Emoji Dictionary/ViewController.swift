//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Sean Moorman on 7/5/17.
//  Copyright © 2017 Sean Moorman. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var table1: UITableView!
    
    var emojis : [Emoji] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        table1.dataSource = self
        table1.delegate = self
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
        let defVC = segue.destination as!
            DefinitionViewController
        defVC.emoji = sender as! Emoji
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func makeEmojiArray() -> [Emoji] {
        
        let emoji1 = Emoji()
        emoji1.stringEmoji = "🌮"
        emoji1 .birthYear = 2010
        emoji1.category = " Food"
        emoji1.definition = "a Taco"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "💋"
        emoji2 .birthYear = 2010
        emoji2.category = " Body parts"
        emoji2.definition = "Lips"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "🐭"
        emoji3 .birthYear = 2010
        emoji3.category = " Animals"
        emoji3.definition = "a mouse"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "💩"
        emoji4 .birthYear = 2010
        emoji4.category = " Smiley Face"
        emoji4.definition = "poop"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "🤖"
        emoji5 .birthYear = 2010
        emoji5.category = " objects"
        emoji5.definition = "a robot"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "👾"
        emoji6 .birthYear = 2010
        emoji6.category = " objects"
        emoji6.definition = "space invader"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]
        
        
        }
    
}

