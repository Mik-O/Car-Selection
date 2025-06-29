//
//  QuestionQuiz.swift
//  Car Selection
//
//  Created by Таня Кожевникова on 28.06.2025.
//

enum ResponseType {
    case single
    case multiple
    case ranged
}

struct Question {
    let text: String
    let type: ResponseType
    let answers: [Answer]
}

extension Question {
    static func getQuestions() -> [Question] {
        [
            Question(
                text: "Что вы цените больше в автомобилях?",
                type: .single,
                answers: [
                    Answer(text: "Стоимость содержания", type: .russia),
                    Answer(text: "Надежность", type: .japan),
                    Answer(text: "Динамику разгона", type: .germany),
                    Answer(text: "Комфорт", type: .usa)
                ]
            ),
            Question(
                text: "Что вам нравится больше?",
                type: .multiple,
                answers: [
                    Answer(text: "Чинить", type: .russia),
                    Answer(text: "просто ехать", type: .japan),
                    Answer(text: "динамично гонять", type: .germany),
                    Answer(text: "чилить за рулем", type: .usa)
                ]
            ),            Question(
                text: "Любите ли вы тратить деньги на содержание своего автомобиля?",
                type: .ranged,
                answers: [
                    Answer(text: "Ненавижу", type: .russia),
                    Answer(text: "Нерничаю", type: .japan),
                    Answer(text: "Не замечаю", type: .germany),
                    Answer(text: "Обожаю", type: .usa)
                ]
            ),
        ]
    }
}
