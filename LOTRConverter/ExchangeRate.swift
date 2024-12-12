//
//  ExtractedView.swift
//  LOTRConverter
//
//  Created by James Raden on 12/12/24.
//


import SwiftUI

struct ExchangeRate: View {
    @State var exchangeInfo: String
    
    var body: some View {
        HStack{
            Image(.goldpiece)
                .resizable()
                .scaledToFit()
                .frame(height: 33.0)
            
            Text(exchangeInfo)
            
            Image(.goldpenny)
                .resizable()
                .scaledToFit()
                .frame(height: 33.0)
        }
    }
}

#Preview {
    ExchangeRate(exchangeInfo: "Hello, World!")
}
