//
//  ViewController.swift
//  TamagoApp
//
//  Created by nowall on 2018/10/27.
//  Copyright © 2018 鈴木貴大. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var topLabel: UILabel!
    
    @IBOutlet weak var bottomLabel: UILabel!
    
    @IBOutlet weak var topComment: UILabel!
    
    var countBox : Int = 10
    var topcomment : String = "ヨッシーは出てきません"
    var bottomComment : String = "もう少し！"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func TamagoButton(_ sender: Any) {
        
        countBox -= 1
        topLabel.text = String(countBox)
        
        if countBox == 5 {
            bottomLabel.text = String(bottomComment)
        }
        if countBox == 4 {
            bottomLabel.text = ""
        }
        if countBox <= 0 {
        topLabel.text = ""
        topComment.text = String(topcomment)
        }
    }
 
    
}

