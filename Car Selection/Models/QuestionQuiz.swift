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
                text: "Какую пищу вы предпочитаете?",
                type: .single,
                answers: [
                    Answer(text: "Стейк", type: .russia),
                    Answer(text: "Рыба", type: .japan),
                    Answer(text: "Морковь", type: .germany),
                    Answer(text: "Кукуруза", type: .usa)
                ]
            ),
            Question(
                text: "Что вам нравится больше?",
                type: .multiple,
                answers: [
                    Answer(text: "Плавать", type: .russia),
                    Answer(text: "Спать", type: .japan),
                    Answer(text: "Обниматься", type: .germany),
                    Answer(text: "Есть", type: .usa)
                ]
            ),            Question(
                text: "Любите ли вы ездить на машине?",
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
