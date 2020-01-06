//
//  QuestionBank.swift
//  English Test Level Check
//
//  Created by MyMacBook on 12/09/2019.
//  Copyright © 2019 MyMacBook. All rights reserved.
//

import Foundation

class QuestionBank {
  
  var list = [Question]()
  
  init() {
    list.append(Question(qNumber: "Question 1", questionText: "... two kittens.", choiceA: "He does", choiceB: "He got", choiceC: "He has got", choiceD: "He have", answer: 3))
    list.append(Question(qNumber: "Question 2", questionText: "... Tom play tennis?", choiceA: "Has", choiceB: "Does", choiceC: "Do", choiceD: "Is", answer: 2))
    list.append(Question(qNumber: "Question 3", questionText: "There isn't ... money in my pockets.", choiceA: "no", choiceB: "some", choiceC: "a few", choiceD: "much", answer: 4))
    list.append(Question(qNumber: "Question 4", questionText: "What did she ... you about it?", choiceA: "told", choiceB: "talk", choiceC: "speak", choiceD: "say to", answer: 4))
    list.append(Question(qNumber: "Question 5", questionText: "How much ... ?", choiceA: "did it costed", choiceB: "does it cost", choiceC: "do this sweater cost", choiceD: "does it costs", answer: 2))
    list.append(Question(qNumber: "Question 6", questionText: "We ..., when the phone rang.", choiceA: "cook", choiceB: "don't cook", choiceC: "cooked", choiceD: "were cooking", answer: 4))
    
  }
  
//  func shuffleArray(arrayToBeShuffled array1: [Question]) -> [Question] { // edit code here
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
