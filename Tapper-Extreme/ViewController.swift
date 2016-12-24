//
//  ViewController.swift
//  Tapper-Extreme
//
//  Created by Brett Foreman on 12/23/16.
//  Copyright © 2016 Brett Foreman. All rights reserved.
//

import UIKit    

class ViewController: UIViewController, UITextFieldDelegate {
    // Properties
    
    var maxTaps: Int = 0
    var currentTaps: Int = 0
    
    //Outlets//
    
    @IBOutlet weak var logoImgView: UIImageView!
    @IBOutlet weak var howManyTapsTxt: UITextField!
    @IBOutlet weak var playButton: UIButton!
    
    @IBOutlet weak var tapButton: UIButton!
    @IBOutlet weak var tapsLabel: UILabel!
    
    @IBAction func onCoinButtonPressed(sender:UIButton!) {
        currentTaps++
        updateTapsLabel()
    
        if isGameOver() {
            restartGame()
    }
    }


    @IBAction func onPlayButtonPressed(sender: UIButton!) {
   
        if howManyTapsTxt.text != nil && howManyTapsTxt.text != "" {
            
    // This code only runs if there's text in the field...
            
            logoImgView.hidden = true
            howManyTapsTxt.hidden = true
            playButton.hidden = true
            
            tapButton.hidden = false
            tapsLabel.hidden = false
        
            maxTaps = Int(howManyTapsTxt.text!)!
            currentTaps = 0
            
            updateTapsLabel()
            }
    }
    
    
    func restartGame() {
        maxTaps = 0
        howManyTapsTxt.text = ""
        
        logoImgView.hidden = false
        howManyTapsTxt.hidden = false
        playButton.hidden = false
        
        tapButton.hidden = true
        tapsLabel.hidden = true
        
    }
    
    func isGameOver () -> Bool {
        if currentTaps >= maxTaps {
            return true }
                else {
                    return false
                }
            }

    
    func updateTapsLabel () {
        tapsLabel.text = "\(currentTaps) Taps"
        
        
    }


}


