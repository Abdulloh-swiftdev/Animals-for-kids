//
//  PlayVC.swift
//  Animals For Kids
//
//  Created by Abdulloh Bahromjonov on 10/9/20.
//

import UIKit
import AVFoundation

class PlayVC: UIViewController
{

    
    @IBOutlet weak var backGroundImage: UIImageView!
    @IBOutlet weak var animal: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    
    override func viewWillAppear(_ animated: Bool)
    {
        if wichWasChoosed == domestic{
            backGroundImage.image = UIImage(named: homeLocation)
            backGroundImage.contentMode = .scaleAspectFill
            changeTo(animal: dog, firstAnswer: domAnswer1Right, secondAnswer: domAnswer1Wrong)
        }
        else if wichWasChoosed == jungle{
            backGroundImage.image = UIImage(named: jungleLocation)
            backGroundImage.contentMode = .scaleAspectFill
            changeTo(animal: tiger, firstAnswer: junAnswer1a, secondAnswer: junAnswer1b)
        }
        else if wichWasChoosed == forest{
            backGroundImage.image = UIImage(named: forestLocation)
            backGroundImage.contentMode = .scaleAspectFill
            changeTo(animal: wolf, firstAnswer: forestAnswer1a, secondAnswer: forestAnswer1b)
        }
        
    }
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        button = Int.random(in: 1...2)
    }
    
    
    @IBAction func exitBtnWasPressed(_ sender: Any)
    {
        exit()
        if wichWasChoosed == domestic{
            restart(firstAnswer: domAnswer1Right, secondAnswer: domAnswer1Wrong, animal: dog)
        }
        else if wichWasChoosed == jungle{
            restart(firstAnswer: junAnswer1a, secondAnswer: junAnswer1b, animal: tiger)
        }
        else if wichWasChoosed == forest{
            restart(firstAnswer: forestAnswer1a, secondAnswer: forestAnswer1b, animal: wolf)
        }
    }
    

    @IBAction func buttonWasPressed(_ sender: UIButton)
    {
        wichButton = sender.tag
        
        // MARK: - Domestic level
        
        if wichWasChoosed == domestic
        {
            if storyIndex == 1{
                changeTo(animal: dog, firstAnswer: domAnswer1Right, secondAnswer: domAnswer1Wrong)
            }
            
            if wichButton == 1 && storyIndex == 1
            {
                correctAnswer()
                changeTo(animal: cat, firstAnswer: domAnswer2Right, secondAnswer: domAnswer2Wrong)
                storyIndex = 2
            }

            else if wichButton == 1 && storyIndex == 2
            {
                correctAnswer()
                changeTo(animal: cow, firstAnswer: domAnswer3Wrong, secondAnswer: domAnswer3Right)
                storyIndex = 3
            }

            else if wichButton == 2 && storyIndex == 3
            {
                correctAnswer()
                changeTo(animal: hen, firstAnswer: domAnswer4Wrong, secondAnswer: domAnswer4Right)
                storyIndex = 4
            }
            else if wichButton == 2 && storyIndex == 4
            {
                correctAnswer()
                changeTo(animal: horse, firstAnswer: domAnswer5Right, secondAnswer: domAnswer5Wrong)
                storyIndex = 5
            }
            else if wichButton == 1 && storyIndex == 5
            {
                correctAnswer()
                showAlert()
            }
            else
            {
                wrong()
            }
        }
        
        
        // MARK: - Jungle
        else if wichWasChoosed == jungle
        {
            if storyIndex == 1{
                changeTo(animal: tiger, firstAnswer: junAnswer1a, secondAnswer: junAnswer1b)
            }
            
            if wichButton == 2 && storyIndex == 1
            {
                correctAnswer()
                changeTo(animal: monky, firstAnswer: junAnswer2a, secondAnswer: junAnswer2b)
                storyIndex = 2
            }

            else if wichButton == 1 && storyIndex == 2
            {
                correctAnswer()
                changeTo(animal: giraf, firstAnswer: junAnswer3a, secondAnswer: junAnswer3b)
                storyIndex = 3
            }

            else if wichButton == 1 && storyIndex == 3
            {
                correctAnswer()
                changeTo(animal: elephant, firstAnswer: junAnswer4a, secondAnswer: junAnswer4b)
                storyIndex = 4
            }
            else if wichButton == 2 && storyIndex == 4
            {
                correctAnswer()
                changeTo(animal: snake, firstAnswer: junAnswer5a, secondAnswer: junAnswer5b)
                storyIndex = 5
            }
            else if wichButton == 1 && storyIndex == 5
            {
                correctAnswer()
                showAlert()
            }
            else
            {
                wrong()
            }
        }
        
        // MARK: - If forest was choosed
        else if wichWasChoosed == forest{
            if storyIndex == 1{
                changeTo(animal: wolf, firstAnswer: forestAnswer1a, secondAnswer: forestAnswer1b)
            }
            
            if wichButton == 2 && storyIndex == 1
            {
                correctAnswer()
                changeTo(animal: fox, firstAnswer: forestAnswer2a, secondAnswer: forestAnswer2b)
                storyIndex = 2
            }

            else if wichButton == 1 && storyIndex == 2
            {
                correctAnswer()
                changeTo(animal: bear, firstAnswer: forestAnswer3b, secondAnswer: forestAnswer3a)
                storyIndex = 3
            }

            else if wichButton == 2 && storyIndex == 3
            {
                correctAnswer()
                changeTo(animal: deer, firstAnswer: forestAnswer4b, secondAnswer: forestAnswer4a)
                storyIndex = 4
            }
            else if wichButton == 1 && storyIndex == 4
            {
                correctAnswer()
                changeTo(animal: rabbit, firstAnswer: forestAnswer5b, secondAnswer: forestAnswer5a)
                storyIndex = 5
            }
            else if wichButton == 2 && storyIndex == 5
            {
                correctAnswer()
                showAlert()
                
            }
            else
            {
                wrong()
            }
        }
        
        
        
    }
    
    
    // MARK: - Functions
    
    
    
    
    //alert function
    func showAlert()
    {
        
        let alert = UIAlertController(title: "Congretulations!!!", message: "You have compleated this level Yeah", preferredStyle: .alert)
        let exitAction = UIAlertAction(title: "Exit", style: .default, handler: { (UIAlertAction) in self.exit()})
        alert.addAction(exitAction)
        present(alert, animated: true, completion: nil)
    }
    
    //restart fuction
    func restart(firstAnswer: String, secondAnswer: String, animal: String)
    {
        self.animal.text = animal
        button1.setTitle(firstAnswer, for: .normal)
        button2.setTitle(secondAnswer, for: .normal)
        storyIndex = 1
    }
    
    func changeTo(animal: String, firstAnswer: String, secondAnswer: String)
    {
        self.animal.text = animal
        button1.setTitle(firstAnswer, for: .normal)
        button2.setTitle(secondAnswer, for: .normal)
    }
    
    //exit function
    func exit()
    {
        dismiss(animated: true, completion: nil)
        if wichWasChoosed == domestic{
            restart(firstAnswer: domAnswer1Right, secondAnswer: domAnswer1Wrong, animal: dog)
        }
        else if wichWasChoosed == jungle{
            restart(firstAnswer: junAnswer1a, secondAnswer: junAnswer1b, animal: tiger)
        }
        else if wichWasChoosed == forest{
            restart(firstAnswer: forestAnswer1a, secondAnswer: forestAnswer1b, animal: wolf)
        }
    }
    
    
    

    
}



// MARK: - Public Functions
//correct answer function

func correctAnswer()
{
    do
    {
        audioPlayer = try AVAudioPlayer(contentsOf: correctUrl)
        audioPlayer.play()
    }catch
    {
    }
}

//wrong answer function
func wrongAnswer()
{
    do
    {
        audioPlayer = try AVAudioPlayer(contentsOf: wrongUrl)
        audioPlayer.play()
    }catch
    {
    }
}

// wrong function
func wrong(){
    wrongAnswer()
}

