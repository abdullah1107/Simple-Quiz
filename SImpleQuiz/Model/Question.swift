//
//  Question.swift
//  SImpleQuiz
//  Created by Muhammad Abdullah Al Mamun on 12/3/19.
//  Copyright © 2019 Muhammad Abdullah Al Mamun. All rights reserved.
//

import Foundation

class Question{
    let questionText:String
    let questionAns:Bool
    
    init(text:String, Ans:Bool) {
        questionText = text
        questionAns = Ans
    }
}
