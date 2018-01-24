//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Mark Chan on 24/1/2018.
//  Copyright © 2018年 Mark Chan. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    var emoji = "NO EMOJI"
    
    @IBOutlet weak var definitionLabel: UILabel!
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //print(emoji)
        
        emojiLabel.text = emoji
        if emoji == "😀"
        {definitionLabel.text = "Smile"
        }else if emoji == "😎"{definitionLabel.text = "A dude with sunglass"
        }else if emoji == "😘"{definitionLabel.text = "love"}else if emoji == "😢"{definitionLabel.text = "Sad"}else if emoji == "😱"{definitionLabel.text = "OMG"}else if emoji == "😵"{definitionLabel.text = "Dead"}
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
