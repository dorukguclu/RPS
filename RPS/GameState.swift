//
//  GameState.swift
//  RPS
//
//  Created by Doruk GÜÇLÜ on 6.10.2024.
//

import Foundation
import UIKit

// Enum representing the different states of the game
enum GameState {
    case start
    case win
    case lose
    case draw
    
    // Status message for each game state
    var status: String {
        switch self {
        case .start:
            return "Rock, Paper, Scissors?"
        case .win:
            return "You Win!"
        case .lose:
            return "You Lose!"
        case .draw:
            return "It's a Draw!"
        }
    }
    
    // Color representation for each game state
    var color: UIColor {
        switch self {
        case .start:
            return .gray
        case .win:
            return .green
        case .lose:
            return .red
        case .draw:
            return .yellow
        }
    }
}
