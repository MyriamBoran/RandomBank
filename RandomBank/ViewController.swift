//
//  ViewController.swift
//  RandomBank
//
//  Created by Myriam Boran on 11/01/2017.
//  Copyright © 2017 Myriam Boran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        label.layer.cornerRadius = 20
        label.clipsToBounds = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }

    @IBAction func RandomFact(_ sender: Any) {
        
        let array = ["A bolt of lightning is six times hotter than the sun.",
                     "The universe is filled with galaxies and the most distant ones are moving away from us at more than 90 percent of the speed of light.",
                     "Saturn is the only planet in the solar system that would float on water.",
                     "The Sun burns 600 million tons of Hydrogen every second.",
                     "Vega will become our new north star in 12000 years.",
                     "There is a black hole millions of times the mass of the Sun at the center of the Milky Way galaxy.",
                     "Earth is the only planet that has tectonic plates.",
                     "The Cosmic Microwave Background that we detect today started traveling towards us over 13 billion years ago."]
        
        let RandomFact = Int(arc4random_uniform(UInt32(array.count)))
        label.text = array[RandomFact]
    }

}

