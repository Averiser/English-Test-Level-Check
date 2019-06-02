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
  
  //Outlet for Buttons
  @IBOutlet weak var optionA: UIButton!
  @IBOutlet weak var optionB: UIButton!
  @IBOutlet weak var optionC: UIButton!
  @IBOutlet weak var optionD: UIButton!
  
  let allQuestions = QuestionBank()
  var qNumber: Int = 0
  var score: Int = 0
  var selectedAnswer: Int = 0
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    updateQuestion()
    updateUI()
  }

  @IBAction func answerPressed(_ sender: UIButton) {
    if sender.tag == selectedAnswer {
      print("correct")
      score += 1
    } else {
      print("wrong")
    }
    
    qNumber += 1
    updateQuestion()
  }
  
  func updateQuestion() {
    
    if qNumber < allQuestions.list.count {
      questionLabel.text = allQuestions.list[qNumber].question
      questionNumber.text = allQuestions.list[qNumber].number
      optionA.setTitle(allQuestions.list[qNumber].optionA, for: UIControl.State.normal)
      optionB.setTitle(allQuestions.list[qNumber].optionB, for: UIControl.State.normal)
      optionC.setTitle(allQuestions.list[qNumber].optionC, for: UIControl.State.normal)
      optionD.setTitle(allQuestions.list[qNumber].optionD, for: UIControl.State.normal)
      selectedAnswer = allQuestions.list[qNumber].correctAnswer
    } else {
      let alert = UIAlertController(title: "Awesome", message: "End of Quiz. Do you want to start over?", preferredStyle: .alert)
      let restartAction = UIAlertAction(title: "Restart", style: .default, handler: {action in self.restartQuiz()})
      alert.addAction(restartAction)
      present(alert, animated: true, completion: nil)
    }
    updateUI()
  }
  
  func updateUI() {
    scoreLabel.text = "Score: \(score)"
    questionCounter.text = "\(qNumber)/\(allQuestions.list.count)"
    progressView.frame.size.width = (view.frame.size.width / CGFloat(allQuestions.list.count)) * CGFloat(qNumber)
  }
  
  func restartQuiz() {
    score = 0
    qNumber = 0
    updateQuestion()
  }
    

}

