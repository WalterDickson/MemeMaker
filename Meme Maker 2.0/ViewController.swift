//
//  ViewController.swift
//  Meme Maker 2.0
//
//  Created by Asante on 7/29/20.
//  Copyright © 2020 Walter Dickson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var memeHer: UIImageView!
    @IBOutlet weak var topSegment: UISegmentedControl!
    @IBOutlet weak var topCaption: UILabel!
    @IBOutlet weak var bottomCaption: UILabel!
    @IBOutlet weak var revealButton: UIButton!
    
    let style = Style.iPhone
    
    let choices = [
        CaptionChoice(emoji: "☃️", topCaption: "What did one Snowman say to the other?", bottomCaption: "It smells like carrots!", img: UIImage(named: "snowman")!),
        CaptionChoice(emoji: "🐷", topCaption: "What do you call a pig that does karate?", bottomCaption: "A pork chop.", img: UIImage(named: "pig")!),
        CaptionChoice(emoji: "🦐", topCaption: "Why wouldn’t the shrimp share his treasure?", bottomCaption: "He's a little shellfish.", img: UIImage(named: "shrimp")!)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bottomCaption.isHidden = true
        updateLabels()
        apply()
    }
    
    @IBAction func didChangeSelectedSegmentedControl(_ sender: Any) {
        bottomCaption.isHidden = true
        updateLabels()
    }
    
    @IBAction func revealButtonPressed(_ sender: UIButton) {
        bottomCaption.isHidden = false
    }
    
    func updateLabels() {
        let topSelectedIndex = topSegment.selectedSegmentIndex
        topCaption.text = choices[topSelectedIndex].topCaption
        bottomCaption.text = choices[topSelectedIndex].bottomCaption
        memeHer.image = choices[topSelectedIndex].img
    }
}

extension ViewController {
    // Styling
    func apply() {
        style.apply(textStyle: .view, bgColor: .clear, shadow: false, to: memeHer)
        style.apply(textStyle: .view, bgColor: nil, shadow: true, to: revealButton)
    }
}
