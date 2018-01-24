//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Mark Chan on 23/1/2018.
//  Copyright © 2018年 Mark Chan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var coolTableView: UITableView!
    
    //var emojis = ["😀","😎","😘","😢","😱","😵"]
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        coolTableView.dataSource = self
        coolTableView.delegate = self
        emojis = makeEmojiArray()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //print(indexPath.row)
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
        let DefVC = segue.destination as! DefinitionViewController
        DefVC.emoji = sender as! Emoji
        
        
        //print(sender!)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func makeEmojiArray() -> [Emoji]{
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😀"
        emoji1.birthYear = 2011
        emoji1.category = "Smiley"
        emoji1.definition = "A smiley face"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😎"
        emoji2.birthYear = 2012
        emoji2.category = "Smiley"
        emoji2.definition = "A smiley face with sunglass"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "😘"
        emoji3.birthYear = 2013
        emoji3.category = "Love"
        emoji3.definition = "A lovely face"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "😢"
        emoji4.birthYear = 2014
        emoji4.category = "Sad"
        emoji4.definition = "A sadly face"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "😱"
        emoji5.birthYear = 2014
        emoji5.category = "Fear"
        emoji5.definition = "A fearly face"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "😵"
        emoji6.birthYear = 2015
        emoji6.category = "Dead"
        emoji6.definition = "A deadly face"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]
        
    }
    

}

