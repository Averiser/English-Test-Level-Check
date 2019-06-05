//
//  ViewController.swift
//  English Test Level Check
//
//  Created by MyMacBook on 26/05/2019.
//  Copyright © 2019 MyMacBook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var questionCounter: UILabel!
  @IBOutlet weak var scoreLabel: UILabel!
  @IBOutlet weak var progressView: UIView!
  @IBOutlet weak var questionNumber: UILabel!
  @IBOutlet weak var questionLabel: UILabel!
  
  
  let questions = ["... two kittens.", "... Tom play tennis?", "There isn't ... money in my pockets.", "What did she ... you about it?", "How much ... ?", "We ..., when the phone rang."]
  let answers = [["He does", "He got", "He has got", "He have"], ["Has", "Does", "Do", "Is"], ["no", "some", "a few", "much"], ["told", "talk", "speak", "say to"], ["did it costed", "does it cost", "do this sweater cost", "does it costs"], ["cook", "don't cook", "cooked", "were cooking"]]
  
//  let allQuestions = QuestionBank()
//  var qNumber: Int = 0
  var score: Int = 0
  
  // Variables
  var currentQuestion = 0
  var correctAnswer: UInt32 = 0
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
//    updateQuestion()
//    updateUI()
  }
  
  override func viewDidAppear(_ animated: Bool) {
    newQuestion()
  }
  
  // Function that displays a new question
  func newQuestion() {
    
    questionLabel.text = questions[currentQuestion]
    questionNumber.text = questions[currentQuestion]
    
    correctAnswer = arc4random_uniform(4) + 1
    
    // Create a button
    var button: UIButton = UIButton()
    
    var x = 1
    
    for i in 1...4 {
      // Create a button
      button = view.viewWithTag(i) as! UIButton
      
      if (i == Int(correctAnswer)) {
        button.setTitle(answers[currentQuestion][0], for: .normal)
      } else {
        button.setTitle(answers[currentQuestion][x], for: .normal)
        x = 2
      }
    }
    currentQuestion += 1
  }
  
  
  @IBAction func action(_ sender: Any) {
    if (sender as AnyObject).tag == Int(correctAnswer) {
            print("correct")
            score += 1
          } else {
            print("wrong")
          }
    
          if (currentQuestion != questions.count) {
            newQuestion()
          }
  }
  

//  @IBAction func answerPressed(_ sender: AnyObject) {
//    if sender.tag == Int(correctAnswer) {
//      print("correct")
//      score += 1
//    } else {
//      print("wrong")
//    }
//    
//    if (currentQuestion != questions.count) {
//      newQuestion()
//    }
//   
//  }
  
//  func updateQuestion() {
//
//    if qNumber < allQuestions.list.count {
//      questionLabel.text = allQuestions.list[qNumber].question
//      questionNumber.text = allQuestions.list[qNumber].number
//      optionA.setTitle(allQuestions.list[qNumber].optionA, for: UIControl.State.normal)
//      optionB.setTitle(allQuestions.list[qNumber].optionB, for: UIControl.State.normal)
//      optionC.setTitle(allQuestions.list[qNumber].optionC, for: UIControl.State.normal)
//      optionD.setTitle(allQuestions.list[qNumber].optionD, for: UIControl.State.normal)
//      selectedAnswer = allQuestions.list[qNumber].correctAnswer
//    } else {
//      let alert = UIAlertController(title: "Awesome", message: "End of Quiz. Do you want to start over?", preferredStyle: .alert)
//      let restartAction = UIAlertAction(title: "Restart", style: .default, handler: {action in self.restartQuiz()})
//      alert.addAction(restartAction)
//      present(alert, animated: true, completion: nil)
//    }
//    updateUI()
//  }
  
  func updateUI() {
//    scoreLabel.text = "Score: \(score)"
//    questionCounter.text = "\(questions)/\(questions.count)"
//    progressView.frame.size.width = (view.frame.size.width / CGFloat(questions.count))
  }
//  
//  func restartQuiz() {
//    score = 0
//    qNumber = 0
////    updateQuestion()
//  }
    

}

