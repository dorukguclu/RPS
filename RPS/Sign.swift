//
//  Sign.swift
//  RPS
//
//  Created by Doruk GÜÇLÜ on 6.10.2024.
//

import Foundation

// Function to generate a random sign for the computer
func randomSign() -> Sign {
    let sign = Int.random(in: 0...2)
    if sign == 0 {
        return .rock
    } else if sign == 1 {
        return .paper
    } else {
        return .scissors
    }
}

// Enum representing the different signs in Rock-Paper-Scissors
enum Sign {
    case rock
    case paper
    case scissors
    
    // Emoji representation of each sign
    var emoji: String {
        switch self {
        case .rock:
            return "👊"
        case .paper:
            return "✋"
        case .scissors:
            return "✌️"
        }
    }
    
    // Determines the game state based on the player's sign and the opponent's sign
    func gameState(against opponentSign: Sign) -> GameState {
        if self == opponentSign {
            return .draw
        }
        switch self {
        case .rock:
            return opponentSign == .scissors ? .win : .lose
        case .paper:
            return opponentSign == .rock ? .win : .lose
        case .scissors:
            return opponentSign == .paper ? .win : .lose
        }
    }
}
