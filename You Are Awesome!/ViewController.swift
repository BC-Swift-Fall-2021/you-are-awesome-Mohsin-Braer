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
    
    var imageNumber = 0;
    var messageNumber = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        messageLabel.text = "";
    }
    
    @IBAction func sayItButtonPressed(_ sender: UIButton)
    {
        let messages = ["You Are Awesome!", "You Are Fantastic" , "You Are Great!", "Fabulous? That's you!"];
        
        
        //Messaging using Random
        imageView.image = UIImage(named: "image\(Int.random(in: 0...9))");
        messageLabel.text = messages[Int.random(in:0...(messages.count-1))];
        
        
                // Message array & Images without random
        //        print(imageNumber);
        //        imageView.image = UIImage(named: "image\(imageNumber)");
        //        imageNumber+=1;
        //        if(imageNumber > 9){
        //            imageNumber = 0;}
        //
        //        messageLabel.text = messages[messageNumber];
        //        messageNumber+=1;
        //        if(messageNumber == messages.count)
        //        {messageNumber = 0;}
        //
        
        
        
//                //print("😎 Say It Was Pressed!");
//                let awesomeMessage = "You Are Awesome!";
//                let greatMessage = "You Are Great!";
//                let daBombMessage = "You Are Da Bomb!";
//
//                if(messageLabel.text == awesomeMessage){
//                    messageLabel.text = greatMessage;
//                    imageView.image = UIImage(named: "image1");
//
//                } else if(messageLabel.text == greatMessage){
//                    messageLabel.text = daBombMessage;
//                    imageView.image = UIImage(named: "image2");
//
//                }else{
//                    messageLabel.text = awesomeMessage;
//                    imageView.image = UIImage(named: "image0");
//                }
        
        
        

    }


}

