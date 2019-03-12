//
//  QuestionBank.swift
//  SImpleQuiz
//
//  Created by Muhammad Abdullah Al Mamun on 12/3/19.
//  Copyright © 2019 Muhammad Abdullah Al Mamun. All rights reserved.
//

import Foundation

class QuestionBank{
    var list = [Question]()
    
    init(){
        //1
        let item = Question(text: "Bangladesh is beautiful Country?", Ans: true)
        list.append(item)
        list.append(Question(text: "Cox'sBazar is longest beaches in the world?", Ans: true))
        //2
        list.append(Question(text: "Noakhali is the Capital of Bangladesh?", Ans: false))
        //3
        list.append(Question(text: "The Royal Bengal Tiger is the country’s national animal?", Ans: true))
        //4
        list.append(Question(text: "Bangladesh” Did Not Exist Before 1971?", Ans: true))
        //5
        list.append(Question(text: "The Only Country to Fight a War and Declare Independence Over Language?", Ans: true))
        //6
        list.append(Question(text: "There are approximately 700 rivers flowing throughout the country?", Ans: true))
        //7
        list.append(Question(text: "5 + 7 = 11", Ans: false))
        //8
        list.append(Question(text: "5 * 7 =  35", Ans: true))
        //9
        list.append(Question(text: "(a + b)^2 = a^2 + 2ab + b^2", Ans: true))
        //10
        list.append(Question(text: "35/5 = 10", Ans: false))
        //11
        list.append(Question(text: "5 + 7 = 12", Ans: true))
        //12
        list.append(Question(text: "Emon is a famous comedian?", Ans: true))
        //13
        list.append(Question(text: "15 + 5 =  20", Ans: true))
        
        
    }
}
