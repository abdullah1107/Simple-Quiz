//
//  ViewController.swift
//  SImpleQuiz
//  Created by Muhammad Abdullah Al Mamun on 12/3/19.
//  Copyright © 2019 Muhammad Abdullah Al Mamun. All rights reserved.


import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var question_label: UILabel!
    
    @IBOutlet weak var progressView: UIView!
    
    @IBOutlet weak var scorelabel: UILabel!
    
    @IBOutlet weak var totalpoints: UILabel!
    
    
    //variable
    let allQuestions = QuestionBank()
    var pickedAnswer:Bool = false
    var questionNumber:Int = 0
    var score:Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    
    func updateUI(){
        progressView.frame.size.width = (view.frame.size.width / 13) * CGFloat(questionNumber)
        scorelabel.text = "\(score)"
        totalpoints.text = "\(questionNumber)" + "/13"
        nextQuestion()
    }
    
    func nextQuestion(){
        if questionNumber <= 12 {
            question_label.text = allQuestions.list[questionNumber].questionText
        }
        else {
            let alert = UIAlertController(title: "Awesome", message: "You've finished all the questions, do you want to start over?", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: { UIAlertAction in
                self.startOver()
            })
            
            alert.addAction(restartAction)
            
            present(alert, animated: true, completion: nil)
        }
        
    }
    
    
    @IBAction func button_pressed(_ sender: UIButton) {
        
        print("button Pressed", sender.tag)
        
        if(questionNumber <= 11){
            
        if (sender.tag == 1){
            pickedAnswer = true
        }
        else{
             pickedAnswer = false
        }
        
         checkAnswer()
         questionNumber = questionNumber + 1
         updateUI()
        }
        else{
            startOver()
        }
    }
    
    //this method is checking the answer
    func checkAnswer(){
        let correctAnswer = allQuestions.list[questionNumber].questionAns
        
        if correctAnswer == pickedAnswer{
            print("Answer is correct")
            score = score + 1
            
            ///////////////////////
            let alert = UIAlertController(title:"", message: "Answer is Correct", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
                switch action.style{
                case .default:
                    print("default")
                    
                case .cancel:
                    print("cancel")
                    
                case .destructive:
                    print("destructive")
                    
                    
                }}))
            self.present(alert, animated: true, completion: nil)
  
            ////////////////////////
    
        }
        else{
            print("Answer is not correct")
            let alert = UIAlertController(title: "", message: "Answer is not Correct", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
                switch action.style{
                case .default:
                    print("default")
                    
                case .cancel:
                    print("cancel")
                    
                case .destructive:
                    print("destructive")
                    
                    
                }}))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    
    //This method will wipe the board clean, so that users can retake the quiz.
    func startOver() {
        
        questionNumber = 0
        score = 0
        updateUI()
        
    }
    


}

