//
//  ViewController.swift
//  Quiz
//
//  Created by Omer Wazir on 8/21/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    private var currentQuestionIndex:Int
    private let questions:[String] = [
        "Who is the leader of the Rebel Alliance",
        "What is the code name of Hoth Base",
        "It's a ...?" ]
    private let answers:[String] = [
        "Mon Mothma",
        "Echo Base",
        "Trap"]
    
    required init(coder: NSCoder) {
        fatalError("NSCoding not supported")
    }
    
    override init(){
        self.currentQuestionIndex = 0
        super.init(nibName: "QuizViewController", bundle: nil)
        self.tabBarItem.title = "Quiz";
        self.tabBarItem.image = UIImage(named: "quiz.png");
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showQuestion(sender: AnyObject) {
        //go to the next question
        self.currentQuestionIndex++
        
        //if we reached the last question go back to the first question
        if(self.currentQuestionIndex == self.questions.count){
            self.currentQuestionIndex = 0
        }
        
        //set the question to the current question
        self.questionLabel.text = self.questions[self.currentQuestionIndex]
        
        //reset the answer labels text
        self.answerLabel.text = "???"
        
    }
    
    @IBAction func showAnswer(sender: AnyObject) {
        self.answerLabel.text = self.answers[self.currentQuestionIndex]
    }

}

