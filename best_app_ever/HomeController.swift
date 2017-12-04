//
//  ViewController.swift
//  best_app_ever
//
//  Created by Alexan Gomez on 11/13/17.
//  Copyright © 2017 iOS Class. All rights reserved.
//

import UIKit
import CoreData

class HomeController: UIViewController {
    var historyEmoji = Activity(fn: 0, actN: "", emo: "", ts: Date())
    
    var dataManager = DataManagment()
    
    @IBOutlet weak var lastStatus: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let history = dataManager.getHistoryScores()
        let emoji = historyEmoji.toEmoji(newFeel: history[history.count-1])
        lastStatus.text = emoji
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    // Josh needs to prepare for segue to History from here... note
}

