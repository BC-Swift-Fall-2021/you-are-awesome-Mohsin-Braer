//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Mohsin Braer on 9/1/21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var imageNumber = -1;
    var messageNumber = -1;
    var soundNumber = -1;
    var audioPlayer: AVAudioPlayer!;
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        messageLabel.text = "";
    }
    
    @IBAction func sayItButtonPressed(_ sender: UIButton)
    {
        let messages = ["You Are Awesome!", "You Are Fantastic" , "You Are Great!", "Fabulous? That's you!"];
        
        
        //Messaging using Random
        
        messageNumber = nonRepeatingRandom(original: messageNumber, upperLimit: messages.count);
        messageLabel.text = messages[messageNumber];
    
        
        imageNumber = nonRepeatingRandom(original: imageNumber, upperLimit: 8);
        imageView.image = UIImage(named: "image\(imageNumber)");
        
        
        soundNumber = nonRepeatingRandom(original: soundNumber, upperLimit: 6)
        playSound(name: "sound\(soundNumber)");
        
        //        if let sound = NSDataAsset(name: "sound0"){
        //            do{
        //                try audioPlayer = AVAudioPlayer(data: sound.data);
        //                audioPlayer.play();
        //            } catch{
        //                print("ERROR: \(error.localizedDescription) Couldn't initializate audioPlayer");
        //            }
        //
        //        }else
        //        {
        //            print("ERROR: Couldn't read data from file sound0");
        //        }
        //
                
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
    
    func nonRepeatingRandom(original: Int, upperLimit: Int) -> Int
    {
        var newNumber: Int;
        repeat
        {
            newNumber = Int.random(in: 0..<upperLimit);
        }while (newNumber == original)
        
        return newNumber;
    }
    
    func playSound(name: String)
    {
        if let sound = NSDataAsset(name: name){
            do{
                try audioPlayer = AVAudioPlayer(data: sound.data);
                audioPlayer.play();
            } catch{
                print("ERROR: \(error.localizedDescription) Couldn't initializate audioPlayer");
            }
            
        }else
        {
            print("ERROR: Couldn't read data from file sound0");
        }
    }


}

