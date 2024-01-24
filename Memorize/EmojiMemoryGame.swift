//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Zx 小小 on 2024/1/18.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
    private static let emojis = ["👻", "🎃", "🕷️", "😈", "💀", "🕸️", "👹", "🤖", "👽", "🐯", "🍭", "🤡"]
        
    private static func createMemoryGame() -> MemoryGame<String> {
        return MemoryGame(numberOfParisOfCards: 9) { pairIndex in
            if emojis.indices.contains(pairIndex) {
                return emojis[pairIndex]
            } else {
                return "⁉️"
            }
        }
    }
    
    @Published private var game = createMemoryGame()
    
    var cards: [Card] {
        game.cards
    }
    
    var color: Color {
        .orange
    }
    
    var score: Int {
        game.score
    }
    
    // MARK: - Intents
    
    func shuffle() {
        game.shuffle()
    }
    
    func choose(_ card: Card) {
        game.choose(card)
    }
}
