//
//  CurrencyIcon.swift
//  LOTRConverter
//
//  Created by James Raden on 12/12/24.
//


import SwiftUI

struct CurrencyIcon: View {
    var currencyImage: ImageResource
    var currencyName: String
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Image(currencyImage)
                .resizable()
                .scaledToFit()
            Text(currencyName)
                .padding(3.0)
                .font(.caption)
                .frame(maxWidth: .infinity)
                .background(.brown.opacity(0.75))
        }
        .padding(3.0)
        .frame(width: 100.0, height: 100.0)
        .background(.brown)
        .clipShape(.buttonBorder)
    }
}

#Preview {
    CurrencyIcon(currencyImage: .goldpiece, currencyName: "Gold Piece")
}
