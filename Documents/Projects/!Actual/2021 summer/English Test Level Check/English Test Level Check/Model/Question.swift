//
//  Question.swift
//  English Test Level Check
//
//  Created by MyMacBook on 12/09/2019.
//  Copyright © 2019 MyMacBook. All rights reserved.
//

import Foundation

class Question {
  
  let questionNumber: String
  let question: String
  let optionA: String
  let optionB: String
  let optionC: String
  let optionD: String
  let correctAnswer: Int
  
  init (qNumber: String, questionText: String, choiceA: String, choiceB: String, choiceC: String, choiceD: String, answer: Int) {
    questionNumber = qNumber
    question = questionText
    optionA = choiceA
    optionB = choiceB
    optionC = choiceC
    optionD = choiceD
    correctAnswer = answer
  }
}
