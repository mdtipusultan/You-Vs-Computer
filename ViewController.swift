//
//  ViewController.swift
//  card games
//
//  Created by User on 8/12/21.
//  Copyright © 2021 User. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //IBOulet e story board theke cntrl chepe aikahne enechi jeigulo use korbo.
    @IBOutlet weak var leftimageview: UIImageView!
    
    @IBOutlet weak var rightimageview: UIImageView!
    
    @IBOutlet weak var personscorelevel: UILabel!
    
    @IBOutlet weak var computerscorelevel: UILabel!
    
    var personscore = 0
    var computerscore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // jei button e tap korle kaj hobe seta te cntrl chepe aikhane enechi
    @IBAction func dealbutton(_ sender: Any) {
        
        //random number newar jonno akta variable e Int.random use kore oikhane dilam
        let leftnumber = Int.random(in: 2...14)
        let rightnumber = Int.random(in: 2...14)
        
        //imageuporer image-view ta te (.image) niye imag echange korar bebosta korlam.. then random number nilam
        leftimageview.image = UIImage(named: "card\(leftnumber)")
        rightimageview.image = UIImage(named: "card\(rightnumber)")
        
        // compare korlam jei number ta boro seta te 1 jog kore dilam.
        if(leftnumber > rightnumber){
         personscore += 1
            //upore jeikhane level ta nisi seta te text newar ability disi pore int tao string e convert kore send korsi for value update.
            personscorelevel.text = String(personscore)
         }
        else if(leftnumber < rightnumber){
        computerscore += 1
            computerscorelevel.text = String(computerscore)
        }
        else{
            //Tie toast should show here
        }

    }
    
    
}

