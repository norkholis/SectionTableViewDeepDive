//
//  ViewController.swift
//  SectionDeepDive
//
//  Created by Moch. Nor Kholis on 26/12/19.
//  Copyright © 2019 Moch. Nor Kholis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    @IBAction func toTaskOneButton(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let toTaskOneViewController = storyBoard.instantiateViewController(withIdentifier: "toTaskOne") as! TaskOneController
        self.present(toTaskOneViewController, animated: true, completion: nil)
    }
    
    @IBAction func toLabController(_ sender: Any) {
    }
    
    @IBAction func toTaskTwoButton(_ sender: Any) {
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let toTaskTwoViewController = storyBoard.instantiateViewController(identifier: "toTaskTwo") as! TaskTwoController
        self.present(toTaskTwoViewController, animated: true, completion: nil)
    }
    
}

