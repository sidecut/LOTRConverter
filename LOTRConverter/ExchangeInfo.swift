//
//  ExchangeInfo.swift
//  LOTRConverter
//
//  Created by James Raden on 12/12/24.
//

import SwiftUI

struct ExchangeInfo: View {
    var body: some View {
        ZStack {
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack {
                Text("Exchange Rates")
                    .font(.largeTitle)
                    .tracking(3)
                
                Text("Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world except one. We used to take Brandy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates:")
                    .padding(.top, -1.0)
                    .padding(.leading, 30.0)
                    .padding(.trailing, 30.0)
                    .padding(.bottom)
                
                ExchangeRate(exchangeInfo: "1 Gold Piece = 4 Gold Pennies")
                
                Button("Done") {
                    
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown.mix(with: .black, by: 0.2))
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)
            }
            .foregroundStyle(.black)
        }
        
    }
}

#Preview {
    ExchangeInfo()
}
