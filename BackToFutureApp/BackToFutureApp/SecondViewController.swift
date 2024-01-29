//
//  SecondViewController.swift
//  BackToFutureApp
//
//  Created by Akshit Saxena on 1/9/24.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var lab1: UILabel!
    
    @IBOutlet weak var lab2: UILabel!
    
    
    @IBOutlet weak var lab3: UILabel!
    
    @IBOutlet weak var lab4: UILabel!
    
    
    @IBAction func ButtonClicked(_ sender: Any) {
        let utils = Utilities()
        let year = utils.GetRandomYear()
        
        lab1.text = utils.GetLetterAtIndex(str: year, location: 0)
        lab2.text = utils.GetLetterAtIndex(str: year, location: 1)
        lab3.text = utils.GetLetterAtIndex(str: year, location: 2)
        lab4.text = utils.GetLetterAtIndex(str: year, location: 3)
        
        AnimateItem(duration: 0.5, delay: 0, object: lab1)
        AnimateItem(duration: 0.5, delay: 0.2, object: lab2)
        AnimateItem(duration: 0.5, delay: 0.4, object: lab3)
        AnimateItem(duration: 0.5, delay: 0.6, object: lab4)
    }
    
    func AnimateItem(duration: Double, delay: Double, object: UIView){
        UIView.animate(withDuration: duration, delay: delay, options: .curveEaseOut, animations: {
            object.center.x += self.view.bounds.width
        }){(true) in
        }
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
