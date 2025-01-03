//
//  SelectCurrency.swift
//  LOTRConverter
//
//  Created by James Raden on 12/12/24.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    @Binding var fromCurrency: Currency
    @Binding var toCurrency: Currency

    var body: some View {
        ZStack {
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)

            VStack {
                Text("Select the currency you are starting with:")
                    .fontWeight(.bold)
                    .padding()

                IconGrid(selectedCurrency: $fromCurrency)

                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
                    .padding(.top)

                IconGrid(selectedCurrency: $toCurrency)

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
            .foregroundStyle(.black)
        }
    }
}

#Preview {
    @Previewable @State var fromCurrency: Currency = .silverPenny
    @Previewable @State var toCurrency: Currency = .goldPenny

    SelectCurrency(fromCurrency: $fromCurrency, toCurrency: $toCurrency)
}
