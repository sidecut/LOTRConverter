//
//  SelectCurrency.swift
//  LOTRConverter
//
//  Created by James Raden on 12/12/24.
//


import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss

    let currencies: [(ImageResource, String)] = [
        (ImageResource.copperpenny, currencyName: "Copper Penny"),
        (ImageResource.copperpenny, currencyName: "Copper Penny"),
        (ImageResource.copperpenny, currencyName: "Copper Penny"),
        (ImageResource.copperpenny, currencyName: "Copper Penny"),
        (ImageResource.copperpenny, currencyName: "Copper Penny"),
    ]

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
                    ForEach(0..<5) {i in
                        CurrencyIcon(currencyImage: currencies[i].0, currencyName: currencies[i].1)
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
    SelectCurrency()
}


