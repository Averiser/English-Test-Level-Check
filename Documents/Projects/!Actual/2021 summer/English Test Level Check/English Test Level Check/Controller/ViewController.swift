//
//  ViewController.swift
//  English Test Level Check
//
//  Created by MyMacBook on 26/05/2019.
//  Copyright © 2019 MyMacBook. All rights reserved.
//º

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
  
//  let questions = ["... two kittens.", "... Tom play tennis?", "There isn't ... money in my pockets.", "What did she ... you about it?", "How much ... ?", "We ..., when the phone rang."]
//  let answers = [["He does", "He got", "He has got", "He have"], ["Has", "Does", "Do", "Is"], ["no", "some", "a few", "much"], ["told", "talk", "speak", "say to"], ["did it costed", "does it cost", "do this sweater cost", "does it costs"], ["cook", "don't cook", "cooked", "were cooking"]]
  
  let allQuestions = QuestionBank()
  var qtionNumber: Int = 0
  var score: Int = 0
  var selectedAnswer: Int = 0
  var qNumber: Int = 0
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    updateQuestion()
    updateUI()
  }
  
  @IBAction func answerPressed(_ sender: UIButton) {
    if (sender.tag == selectedAnswer) {
      sender.turnGreen()
      print("correct")
      score += 1
    } else {
      sender.turnRed()
      print("wrong")
      }
    qtionNumber += 1
    updateQuestion()
  }
  
  func updateQuestion() {
  
    if qtionNumber <= allQuestions.list.count - 1 {
      questionLabel.text = allQuestions.list[qtionNumber].question
      
      optionA.setTitle(allQuestions.list[qtionNumber].optionA, for: UIControl.State.normal)
      optionB.setTitle(allQuestions.list[qtionNumber].optionB, for: UIControl.State.normal)
      optionC.setTitle(allQuestions.list[qtionNumber].optionC, for: UIControl.State.normal)
      optionD.setTitle(allQuestions.list[qtionNumber].optionD, for: UIControl.State.normal)
      selectedAnswer = allQuestions.list[qtionNumber].correctAnswer
      qNumber += 1
    
    } else {
      let alert = UIAlertController(title: "Awesome", message: "End of Quiz. Do you want to start over?", preferredStyle: .alert)
      let restartAction = UIAlertAction(title: "Restart", style: .default, handler: {action in self.restartQuiz()})
      alert.addAction(restartAction)
      present(alert, animated: true, completion: nil)
    }
    updateUI()
    // 2020-01-06 the only line below - and questions get randomized, the only thing some repeat, others don't pop up at all, so append-remove thing should be handled.
//    allQuestions.list.shuffle()
//    shuffleArray(arrayToBeShuffled: allQuestions.list)
  }
  
  func updateUI() {
    scoreLabel.text = "Score: \(score)"
    questionCounter.text = "\(qtionNumber)/\(allQuestions.list.count)"
    progressView.frame.size.width = (view.frame.size.width / CGFloat(allQuestions.list.count)) * CGFloat(qtionNumber)
    questionNumber.text = "Question \(qNumber)"
    
    allQuestions.list.shuffle()
    allQuestions.list.count - 1
    
  }
  
  func restartQuiz() {
    score = 0
    qtionNumber = 0
    qNumber = 0
    updateQuestion()
  }
  
//  @discardableResult func shuffleArray(arrayToBeShuffled array1: [Question]) -> [Question] { // edit code here
//  var oldArray = array1
//  var newArray = [Question]() // edit code here
//  var randomNumber: Int
//
//  for _ in array1 {
//  randomNumber = Int(arc4random_uniform(UInt32(oldArray.count)))
//  newArray.append(oldArray[randomNumber])
//  oldArray.remove(at: randomNumber)
//  }
//  return newArray
//  }
}

