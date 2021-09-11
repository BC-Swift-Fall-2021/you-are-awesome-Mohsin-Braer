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
        
        messageLabel.text = "";
    }
    
    @IBAction func sayItButtonPressed(_ sender: UIButton)
    {
        //print("😎 Say It Was Pressed!");
        let awesomeMessage = "You Are Awesome!";
        let greatMessage = "You Are Great!";
        let daBombMessage = "You Are Da Bomb!";
        
        if(messageLabel.text == awesomeMessage){
            messageLabel.text = greatMessage;
            imageView.image = UIImage(named: "image1");
            
        } else if(messageLabel.text == greatMessage){
            messageLabel.text = daBombMessage;
            imageView.image = UIImage(named: "image2");
            
        }else{
            messageLabel.text = awesomeMessage;
            imageView.image = UIImage(named: "image0");
        }
        

    }


}

