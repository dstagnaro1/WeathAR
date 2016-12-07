//
//  ViewController.swift
//  WeathAR
//
//  Created by Daniel Stagnaro on 12/2/16.
//  Copyright © 2016 Daniel Stagnaro. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

//import MediaPlayer

class ViewController: UIViewController {

    @IBOutlet weak var menuButton: UIButton!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var timeButton: UIButton!
    @IBOutlet weak var temperatureButton: UIButton!
    @IBOutlet weak var removeCityButton: UIButton!
    
    @IBOutlet weak var systemLabel: UILabel!
    @IBOutlet weak var videoView: UIView!
    
    var moviePlayer: AVPlayerViewController!
//    var moviePlayer: MPMoviePlayerController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        systemLabel.text = ""
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        playVideo()
    }
    
    private func playVideo() {
        guard let path = Bundle.main.path(forResource: "vid", ofType: "mov") else {
            debugPrint("Video not found")
            return
        }
        let url = NSURL.fileURL(withPath: path)
        let player = AVPlayer(url: url as URL)
        let playerViewController = AVPlayerViewController()
        playerViewController.player = player
        playerViewController.view.frame = self.videoView.frame
        self.videoView.addSubview(playerViewController.view)
        self.addChildViewController(playerViewController)
        player.play()
        
        
//        self.present(playerViewController, animated: true){
//            playerViewController.player!.play()
//        }
        
//        self.videoView.addSubview(player.view)
        
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

