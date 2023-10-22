//
//  QNAViewModel.swift
//  hackathon
//
//  Created by Christopher Woods on 10/21/23.
//

import Foundation


class QNAViewModel: ObservableObject {
    @Published var Questions: [Question] = [
        Question(questionEnglish: "What is the supreme law of the land?", questionArabic: "ما هو القانون الأعلى للأرض؟", questionUkran: "Який вищий закон країни?", isTranslated: false, answerPotential:
            [
            "The United States Constitution",
            "Federal Statutes and Laws",
            "U.S. Supreme Court Decisions",
            "Treaties"],
            answerPotentialArabic:
            ["دستور الولايات المتحدة",
            "القوانين والقوانين الاتحادية",
            "قرارات المحكمة العليا الأمريكية",
            "المعاهدات"],
             
            answerPotentialUkraine:
            ["Конституція Сполучених Штатів",
             "Федеральні закони і закони",
             "Рішення Верховного суду США",
             "Договори"
             ],
            answer: 0),
        Question(questionEnglish: "What does the Constitution do?", questionArabic:  "ماذا يفعل الدستور؟", questionUkran: "Що робить Конституція?", isTranslated: false, answerPotential:
                    
            [
            "Establishes the framework for the federal government, defining its three branches.",
            "Protects and guarantees the fundamental rights and liberties of U.S. citizens.",
            "Creates a system of checks and balances to prevent the concentration of power.",
            "Provides for the amendment process, allowing the Constitution to adapt to changing times and needs."


            ],
            answerPotentialArabic:
            [
                "تأسس الإطار الأساسي للحكومة الفيدرالية، محدداً أقسامها الثلاثة.",
                "يحمي ويضمن الحقوق والحريات الأساسية للمواطنين الأمريكيين.",
                "ينشئ نظاماً لفحص السلطات والتوازنات لمنع تراكم السلطة.",
                "يوفر لعملية التعديل، مما يسمح للدستور بالتكيف مع التغيرات في الزمان والحاجات."
            ],

             
            answerPotentialUkraine:
            [
                "Встановлює каркас для федерального уряду, визначаючи його три гілки.",
                "Захищає та гарантує фундаментальні права та свободи громадян США.",
                "Створює систему перевірки та балансів для запобігання концентрації влади.",
                "Надає процедуру поправок, що дозволяє Конституції адаптуватися до змін часу та потреб."
            ],

            answer: 3),
        
        
    ]
    
    
}
