//
//  ExtractedView.swift
//  LOTRConverter
//
//  Created by James Raden on 12/12/24.
//


import SwiftUI

struct ExchangeRate: View {
    let leftImage: ImageResource
    let exchangeInfo: String
    let rightImage: ImageResource

    var body: some View {
        HStack{
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33.0)
            
            Text(exchangeInfo)
            
            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33.0)
        }
    }
}

#Preview {
    ExchangeRate(leftImage: .silverpiece, exchangeInfo: "1 Silver Piece = 4 Silver Pennies", rightImage: .silverpenny)
}
