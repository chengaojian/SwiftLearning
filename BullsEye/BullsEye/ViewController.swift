//
//  ViewController.swift
//  BullsEye
//
//  Created by 三海教育 on 2017/12/26.
//  Copyright © 2017年 JK. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var currentValue = 0
    var targetValue = 0
    var score = 0
    var round = 0
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetLab: UILabel!
    @IBOutlet weak var scoreLab:UILabel!
    @IBOutlet weak var roundLab:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        currentValue = lroundf(slider.value)
        startNewGame()
        
        let thumbImageNormal = #imageLiteral(resourceName: "SliderThumb-Normal") //UIImage(named: "SliderThumb-Normal")
        slider.setThumbImage(thumbImageNormal, for: .normal)
        
        let thumbImageHighlighted = #imageLiteral(resourceName: "SliderThumb-Highlighted") //UIImage(named: "SliderThumb-Highlighted")
        slider.setThumbImage(thumbImageHighlighted, for: .highlighted)
        
        let insets = UIEdgeInsets(top: 0, left: 14, bottom: 0, right: 14)
        
        let trackLeftImage = #imageLiteral(resourceName: "SliderTrackLeft") //UIImage(named: "SliderTrackLeft")
        let trackLeftResizable = trackLeftImage.resizableImage(withCapInsets: insets)
        slider.setMinimumTrackImage(trackLeftResizable, for: .normal)
        
        let trackRightImage = #imageLiteral(resourceName: "SliderTrackRight") //UIImage(named: "SliderTrackRight")
        let trackRightResizable = trackRightImage.resizableImage(withCapInsets: insets)
        slider.setMaximumTrackImage(trackRightResizable, for: .normal)
        
    }
    
    @IBAction func startNewGame() {
        score = 0
        round = 0
        startNewRound()
    }

    @IBAction func sliderMoved(_ slider: UISlider) {
        print("The value of slider is now: \(slider.value)")
        currentValue = lroundf(slider.value)
    }
    
    func startNewRound() {
        round += 1
        targetValue = 1 + Int(arc4random_uniform(100))
        currentValue = 50
        slider.value = Float(currentValue)
        updateLab()
    }
    
    func updateLab() {
        targetLab.text = String(targetValue)
        scoreLab.text = String(score)
        roundLab.text = String(round)
    }
    
    @IBAction func showAlter () {
        let difference = abs(targetValue - currentValue)
        
        var point = 100 - difference
        
        
        
        let titile: String
        
        if difference == 0 {
            titile = "Perfect!"
            point += 100
        }else if difference < 5 {
            titile = "You almost had it!"
            if difference == 1 {
                point += 50
            }
        }else if difference < 10 {
            titile = "Pretty good!"
        }else {
            titile = "Not even close..."
        }
        
        score += point
        
        let message = "The scored \(point) points"
        
        let alter = UIAlertController(title: titile, message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Awesome", style: .default, handler: {
            action in
            self.startNewRound()
        })
        
        alter.addAction(action)
        
        present(alter, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

