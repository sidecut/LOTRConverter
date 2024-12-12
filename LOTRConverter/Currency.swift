//
//  Currency.swift
//  LOTRConverter
//
//  Created by James Raden on 12/12/24.
//

import SwiftUI

/// All values are in terms of a copperPenny
enum Currency: Double {
    case copperPenny = 1
    case silverPenny = 100
    case silverPiece = 400
    case goldPenny = 1600
    case goldPiece = 6400

    var image: ImageResource {
        switch self {
        case .copperPenny: .copperpenny
        case .silverPenny: .silverpenny
        case .silverPiece: .silverpiece
        case .goldPenny: .goldpenny
        case .goldPiece: .goldpiece
        }
    }

    var name: String {
        switch self {
        case .copperPenny:
            "Copper Penny"
        case .silverPenny:
            "Silver Penny"
        case .silverPiece:
            "Silver Piece"
        case .goldPenny:
            "Gold Penny"
        case .goldPiece:
            "Gold Piece"
        }
    }
}
