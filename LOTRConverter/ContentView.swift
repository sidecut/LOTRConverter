//
//  ContentView.swift
//  LOTRConverter
//
//  Created by James Raden on 12/11/24.
//

import SwiftUI

struct ContentView: View {
    @State var showExchangeInfo = false
    @State var showSelectCurrency = false

    @State var leftAmount = ""
    @State var rightAmount = ""

    @State var leftCurrency = Currency.silverPiece
    @State var rightCurrency = Currency.goldPiece

    var body: some View {
        ZStack {
            Image(.background)
                .resizable()
                .ignoresSafeArea()
            VStack {
                // Prancing pony
                Image(.prancingpony)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 200.0)

                // Currency exchange text
                Text("Currency Exchange")
                    .font(.largeTitle)
                    .foregroundStyle(Color.white)
                HStack {
                    VStack {
                        CurrencyDisplay(currency: leftCurrency)
                            .onTapGesture {
                                showSelectCurrency.toggle()
                            }

                        TextField("amount", text: $leftAmount)
                            .textFieldStyle(.roundedBorder)
                    }
                    .padding()

                    // Equal sign
                    Image(systemName: "equal")
                        .foregroundColor(Color.white)
                        .font(.largeTitle)
                        .symbolEffect(.pulse)

                    // Conversion section
                    VStack {
                        CurrencyDisplay(currency: rightCurrency)
                            .onTapGesture {
                                showSelectCurrency.toggle()
                            }

                        TextField("amount", text: $rightAmount)
                            .textFieldStyle(.roundedBorder)
                            .multilineTextAlignment(.trailing)
                    }
                    .padding()
                }
                .background(Color.black.opacity(0.5))
                .foregroundStyle(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 20.0))

                Spacer()

                // Info button
                HStack {
                    Spacer()

                    Button {
                        showExchangeInfo.toggle()
                    } label: {
                        Image(systemName: "info.circle.fill")
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    .padding(.trailing)
                }
            }
            //            .border(.blue)
            .sheet(isPresented: $showExchangeInfo) {
                ExchangeInfo()
            }
            .sheet(isPresented: $showSelectCurrency) {
                SelectCurrency(fromCurrency: $leftCurrency, toCurrency: $rightCurrency)
            }
        }
    }
}

#Preview {
    ContentView()
}

struct CurrencyDisplay: View {
    var currency: Currency

    var body: some View {
        HStack {
            Image(currency.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 33.0)
            Text(currency.name)
                .font(.headline)
        }
    }
}

#Preview {
    CurrencyDisplay(currency: .copperPenny)
}
