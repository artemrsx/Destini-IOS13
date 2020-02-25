//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var activeStoryIdx = 0;
    let story = [
        Story(title: "You see a fork in the road.", choice1: "Take a left.", choice2: "Take a right."),
        Story(title: "You see a tiger", choice1: "Shout for help", choice2: "Play dead"),
        Story(title: "You find a treasure chest", choice1: "Open it", choice2: "Check for traps")
    ]
    
    @IBAction func choice1Action(_ sender: UIButton) {
        if (activeStoryIdx != 0) {return};
        activeStoryIdx = 1;
        updateUI();
    }
    @IBAction func choice2Action(_ sender: UIButton) {
        if (activeStoryIdx != 0) {return};
        activeStoryIdx = 2;
        updateUI();
    }
    
    func updateUI() {
        storyLabel.text = story[activeStoryIdx].title;
        choice1Button.setTitle(story[activeStoryIdx].choice1, for: .normal);
        choice2Button.setTitle(story[activeStoryIdx].choice2, for: .normal);
    }
    
    override func viewDidLoad() {
        super.viewDidLoad();
        self.updateUI();
    }
}
