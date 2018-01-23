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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        coolTableView.dataSource = self
        coolTableView.delegate = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "Hello there😀"
        return cell
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

