//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Mohsin Braer on 9/1/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print("😎 viewDidLoad has executed!");
    }
    
    @IBAction func sayItButtonPressed(_ sender: UIButton)
    {
        print("😎 Say It Was Pressed!");
        messageLabel.text = "You are awesome!";
        imageView.image = UIImage(named: "image0");
        

    }


}

