//
//  ViewController.swift
//  AppB
//
//  Created by Bruno da Luz on 5/9/16.
//  Copyright © 2016 Bruno da Luz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func actionCallApp(sender: AnyObject) {
        let customURL: String = "AppA.scheme://?token=123&register=1"
        self.schemeAvaible(customURL)
    }

    func schemeAvaible(scheme: String) {
        let url = NSURL(string: scheme)
        let canBeOpened = UIApplication.sharedApplication().canOpenURL(url!)

        if canBeOpened {
            print("canBeOpened")
            label.hidden = true
            UIApplication.sharedApplication().openURL(url!)
        } else {
            print("cannot canBeOpened")
            label.hidden = false
        }
    }
}
