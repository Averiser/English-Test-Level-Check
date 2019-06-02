//
//  Question.swift
//  English Test Level Check
//
//  Created by MyMacBook on 27/05/2019.
//  Copyright © 2019 MyMacBook. All rights reserved.
//

import Foundation

class Question {
  let number: String
  let question: String
  let optionA: String
  let optionB: String
  let optionC: String
  let optionD: String
  let correctAnswer: Int
  
  init(questionNumber: String, questionText: String, choiceA: String, choiceB: String, choiceC: String, choiceD: String, answer: Int) {
    number = questionNumber
    question = questionText
    optionA = choiceA
    optionB = choiceB
    optionC = choiceC
    optionD = choiceD
    correctAnswer = answer
  }  
}

