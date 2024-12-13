//
//  SelectCurrency.swift
//  LOTRConverter
//
//  Created by James Raden on 12/12/24.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    @State var currency: Currency?

    var body: some View {
        ZStack {
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)

            VStack {
                Text("Select the currency you are starting with:")
                    .fontWeight(.bold)

                LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
                    ForEach(Currency.allCases) { currency in
                        Button {
                            self.currency = currency
                        } label: {
                            if currency == self.currency {
                                CurrencyIcon(
                                    currencyImage: currency.image, currencyName: currency.name
                                )
                                .shadow(color: .black, radius: 10.0)
                                .overlay {
                                    RoundedRectangle(cornerRadius: 25.0)
                                        .stroke(lineWidth: 3.0)
                                        .opacity(0.5)
                                }
                            } else {
                                CurrencyIcon(
                                    currencyImage: currency.image, currencyName: currency.name)
                            }
                        }
                        .foregroundStyle(.black)
                    }
                }

                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)

                Button("Done") {
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown.mix(with: .black, by: 0.2))
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)
            }
            .padding()
            .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    SelectCurrency(currency: Currency.silverPenny)
}
