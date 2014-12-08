//
//  ViewController.swift
//  DogYears
//
//  Created by Rodney Hess on 12/7/14.
//  Copyright (c) 2014 hess. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var humanYears: UITextField!
    @IBOutlet weak var dogYearsConverted: UILabel!
    @IBOutlet weak var dogYearLabel: UILabel!
    
    let dogYearMultiplier = 7
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertToDogYears(sender: UIButton) {
        
        humanYears.resignFirstResponder()
        dogYearsConverted.font = UIFont(name: "Zapfino" , size: 30)
        dogYearsConverted.hidden = false
        
        var humanYearsWork = (humanYears.text as NSString).doubleValue
        var dogYearConversion:Double
        
        
        if humanYearsWork <= 2 {
            dogYearConversion = humanYearsWork * 10.5
        }
        else {
            dogYearConversion = (21) + ((humanYearsWork - 2)*4)
            
        }
        
        dogYearsConverted.text = "\(dogYearConversion)"
        dogYearLabel.hidden = false
        humanYears.text = ""
    }

}

