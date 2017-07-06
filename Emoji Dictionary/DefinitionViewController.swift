//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Sean Moorman on 7/5/17.
//  Copyright © 2017 Sean Moorman. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var definitionLabel: UILabel!
    
    
    
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = "no emoji"
    
    @IBOutlet weak var category: UILabel!
    
    @IBOutlet weak var birthYearLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        
    
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text! = emoji
        
        if emoji == "👾"{
            definitionLabel.text = "A space invader"
            category.text = "Category: Alien"
            birthYearLabel.text = "Birth Year: Unknown"
        }
        if emoji == "🌮"{
            definitionLabel.text = "A Taco"
        }
        if emoji == "💋"{
            definitionLabel.text = "Kissy Lips"
        }
        if emoji == "😻"{
            definitionLabel.text = "Lovey Cat"
        }
        if emoji == "🐭"{
            definitionLabel.text = "An invadaing mouse"
        }
        if emoji == "💩"{
            definitionLabel.text = "Poop"
        }
        if emoji == "🎃"{
            definitionLabel.text = "A Pumpkin"
        }
        if emoji == "👻"{
            definitionLabel.text = "A Ghost"
        }
        if emoji == "🙏"{
            definitionLabel.text = "Time to eat."
        }
        if emoji == "🤖"{
            definitionLabel.text = "A Robot"
        }
        
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
