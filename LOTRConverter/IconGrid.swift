//
//  IconGrid.swift
//  LOTRConverter
//
//  Created by James Raden on 12/12/24.
//

import SwiftUI

struct IconGrid: View {
    @Binding var selectedCurrency: Currency?

    var body: some View {
        LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
            ForEach(Currency.allCases) { currency in
                if currency == selectedCurrency {
                    CurrencyIcon(currencyImage: currency.image, currencyName: currency.name)
                        .shadow(color: .black, radius: 10.0)
                        .overlay {
                            RoundedRectangle(cornerRadius: 25.0)
                                .stroke(lineWidth: 3.0)
                                .opacity(0.5)
                        }
                } else {
                    CurrencyIcon(currencyImage: currency.image, currencyName: currency.name)
                        .onTapGesture {
                            selectedCurrency = currency
                            debugPrint("Selected \(currency)")
                        }
                }
            }
        }
    }
}
