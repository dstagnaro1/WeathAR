//
//  ViewController.swift
//  WeathAR
//
//  Created by Daniel Stagnaro on 12/2/16.
//  Copyright © 2016 Daniel Stagnaro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var menuButton: UIButton!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var timeButton: UIButton!
    @IBOutlet weak var temperatureButton: UIButton!
    @IBOutlet weak var removeCityButton: UIButton!
    
    @IBOutlet weak var systemLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        systemLabel.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func menuPressed(_ sender: UIButton) {
        
        searchButton.isHidden = !searchButton.isHidden
        timeButton.isHidden = !timeButton.isHidden
        temperatureButton.isHidden = !temperatureButton.isHidden
        removeCityButton.isHidden = !removeCityButton.isHidden
        
        systemLabel.text = "Buttons hidden/shown now"
    }
    
    @IBAction func searchPressed(_ sender: UIButton) {
        systemLabel.text = "Search has been pressed. New city has been added"
    }
    
    @IBAction func timePressed(_ sender: UIButton) {
        systemLabel.text = "Time is being changed. Drag button down to see the future weather"
    }
    
    @IBAction func temperaturePressed(_ sender: UIButton) {
        systemLabel.text = "Changed from Celsius to Fahrenheit or Fahrenheit to Celsius"
    }
    
    @IBAction func removePressed(_ sender: UIButton) {
        systemLabel.text = "Current city removed from favorites list"
    }
    
    
    
    

}

