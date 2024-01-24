//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Zx 小小 on 2023/10/17.
//

import SwiftUI

@main
struct MemorizeApp: App {
    @StateObject var game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(emojiGame: game)
        }
    }
}
