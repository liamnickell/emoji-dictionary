//
//  ViewController.swift
//  emoji-dictionary
//
//  Created by Liam Nickell on 6/21/17.
//  Copyright © 2017 Liam Nickell. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    let emojis = ["🙂", "🙁", "😃", "😎", "😡", "😱", "😈", "💩", "🎉", "👑", "🌈", "💦", "🏎", "🎮", "🎧", "🖥", "📺", "📱", "🐶", "🦊", "😸", "😻", "👹", "👽", "👻", "👌🏻", "👍🏻", "👎🏻", "🙏🏻", "🖕🏻", "🌎", "🌊", "☕️", "🍵", "🍺", "🍣", "🍙", "🍔", "🌮", "🍗", "🍕", "🍪", "🍩", "🍦", "🍆", "💯", "❌", "❗️", "💰"]
    let definitions = ["Smiley Face", "Frowny Face", "Happy Face", "Dank Sunglasses Dude", "Angry Boi", "Surprised Face", "Demon Boi", "Big Turd", "Celebration", "Lustrous Crown", "Colorful Rainbow", "Rain Drops", "Race Car", "Gaming Controller", "Headphones", "Desktop Computer (Superior iMac)", "Old Television", "White iPhone", "Cute Dog", "Cute Fox", "Happy Cat", "Cat Struck by Love", "Red Demon Mask", "Alien (Ayy Lmao)", "Silly Ghost", "Okay Hand Sign", "Thumbs Up", "Thumbs Down", "Itadekimasu or Sign of Humilty/Respect", "\"The Bird\" Hand Sign", "Mother Earth", "The Great Wave off Kanagawa", "Delicious Coffee", "Delicious Hot Tea", "Cold Beer", "Delicious Sushi (i.e. the Food of the Gods)", "Onigiri", "Juicy Hamburger", "Spicy Taco", "Plump Chicken Leg", "Pizza Slice", "Yummy Cookie", "Yummy Donut", "Yummy Ice Cream", "Big, Fat, Moist, and Juicy Eggplant ( ͡° ͜ʖ ͡°)", "Perfect Score/Grade of 100", "Big Red X, Symbol of Falsity", "Big Red Exclamation Mark", "Money Bag"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.dataSource = self
        tableView.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row]
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "showDefinition", sender: indexPath.row)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let definitionVC = segue.destination as! DefinitionViewController
        definitionVC.emoji = emojis[sender as! Int]
        definitionVC.definition = definitions[sender as! Int]
    }
    
}
