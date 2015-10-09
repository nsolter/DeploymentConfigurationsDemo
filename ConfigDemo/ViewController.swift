//
//  ViewController.swift
//  ConfigDemo
//
//  Created by Nicholas Solter on 10/9/15.
//  Copyright © 2015 Nicholas Solter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var serverUrl: String = ""
        
        if let filePath = NSBundle.mainBundle().pathForResource("Settings", ofType: "plist") {
            let contentsOfFile = NSDictionary(contentsOfFile: filePath)
            serverUrl = contentsOfFile?.objectForKey("ServerUrl") as! String
        } else {
            // no settings!
        }

        label.text = serverUrl
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
