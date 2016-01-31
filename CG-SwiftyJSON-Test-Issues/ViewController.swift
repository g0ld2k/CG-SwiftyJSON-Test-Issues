//
//  ViewController.swift
//  SwiftyJSONUITest
//
//  Created by Chris Golding on 1/30/16.
//  Copyright © 2016 Rabidmonkeyware. All rights reserved.
//

import UIKit
import SwiftyJSON

class ViewController: UIViewController {
    @IBOutlet weak var outputLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func pressMe(sender: AnyObject) {
        outputLabel.text = getData()["artist"].string
    }
    
    @IBAction func clearPressed(sender: AnyObject) {
        outputLabel.text = ""
    }
    
    func getData() -> JSON {
        let jsonData = [ "artist" : "value" ]
        let data = JSON(jsonData)
        
        return data
    }
}

