//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Sean Moorman on 7/5/17.
//  Copyright © 2017 Sean Moorman. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
   var emoji = Emoji()
    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var definitionLabel: UILabel!
    
    @IBOutlet weak var categoryLabel: UILabel!
    
    
    @IBOutlet weak var birthYearLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        
    
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji.stringEmoji
        definitionLabel.text = "Definition: \(emoji.definition)"
        categoryLabel.text = "Category: \(emoji.category)"
        birthYearLabel.text = "Birth Year: \(emoji.birthYear)"
        
        
        
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
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



