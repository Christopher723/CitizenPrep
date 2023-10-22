//
//  QuestionMockData.swift
//  hackathon
//
//  Created by Christopher Woods on 10/21/23.
//

import Foundation

struct Question: Identifiable{
    var id = UUID()
    var questionEnglish: String
    var questionArabic: String
    var questionUkran: String
    var isTranslated: Bool
    var answerPotential: [String]
    var answerPotentialArabic: [String]
    var answerPotentialUkraine: [String]
    var answer: Int
    
    init(questionEnglish: String, questionArabic: String, questionUkran: String, isTranslated: Bool,answerPotential: [String],answerPotentialArabic: [String], answerPotentialUkraine: [String], answer: Int) {
        self.questionEnglish = questionEnglish
        self.questionArabic = questionArabic
        self.questionUkran = questionUkran
        self.isTranslated = isTranslated
        self.answerPotential = answerPotential
        self.answerPotentialArabic = answerPotentialArabic
        self.answerPotentialUkraine = answerPotentialUkraine
        self.answer = answer
    }
}

//struct Answer: Identifiable{
//    var id = UUID()
//    var AnswerEnglish: String
//    var AnswerArabic: String
//    var AnswerUkran: String
//    var answerTranslated: Bool
//    
//    
//    init(AnswerEnglish: String, AnswerArabic: String, AnswerUkran: String, answerTranslated: Bool) {
//        self.AnswerEnglish = AnswerEnglish
//        self.AnswerArabic = AnswerArabic
//        self.AnswerUkran = AnswerUkran
//        self.answerTranslated = answerTranslated
//    }
//}

