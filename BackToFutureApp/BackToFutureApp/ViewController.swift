//
//  ViewController.swift
//  BackToFutureApp
//
//  Created by Akshit Saxena on 1/9/24.
//

import UIKit

class ViewController: UIViewController {

    var timer = Timer()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let year = Utilities().GetCurrentYear()
        label1.text = Utilities().GetLetterAtIndex(str: year, location: 0)
        label2.text = Utilities().GetLetterAtIndex(str: year, location: 1)
        label3.text = Utilities().GetLetterAtIndex(str: year, location: 2)
        label4.text = Utilities().GetLetterAtIndex(str: year, location: 3)
        
        self.timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(ViewController.Tick), userInfo: nil, repeats: true)
    }

    @IBOutlet weak var label1: UILabel!
    
    
    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet weak var label3: UILabel!
    
    
    
    @IBOutlet weak var label4: UILabel!
    
    @IBOutlet weak var timeLabel: UILabel!
    
    @objc func Tick(){
        timeLabel.text = Utilities().GetCurrentTime()
    }
    
    
}

