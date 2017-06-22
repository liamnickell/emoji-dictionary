//
//  DefinitionViewController.swift
//  emoji-dictionary
//
//  Created by Liam Nickell on 6/22/17.
//  Copyright © 2017 Liam Nickell. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    
    var emoji = ""
    var definition = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        definitionLabel.adjustsFontSizeToFitWidth = true

        emojiLabel.text = emoji
        definitionLabel.text = definition
    }

}
