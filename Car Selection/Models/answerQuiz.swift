//
//  answerQuiz.swift
//  Car Selection
//
//  Created by Таня Кожевникова on 28.06.2025.
//

struct Answer {
    let text: String
    let type: CountryOfOrigin
}

enum CountryOfOrigin: String {
    case russia = "Россия"
    case japan = "Япония"
    case germany = "Германия"
    case usa = "США"
    
    var definition: String {
        switch self {
        case .russia:
            return "Вам нравится быть с друзьями. Вы окружаете себя людьми, которые вам нравятся и всегда готовы помочь."
        case .japan:
            return "Вы себе на уме. Любите гулять сами по себе. Вы цените одиночество"
        case .germany:
            return "Вам нравится все мягкое. Вы здоровы и полны энергии"
        case .usa:
            return "Ваша сила - в мудрости. Медленный и вдумчивый выигрывает на больших дистанциях"
        }
    }
}
