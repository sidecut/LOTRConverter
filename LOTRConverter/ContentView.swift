//
//  ContentView.swift
//  LOTRConverter
//
//  Created by James Raden on 12/11/24.
//

import SwiftUI

struct ContentView: View {
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
                HStack{
                    VStack{
                        HStack{
                            Image(.silverpiece)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 33.0)
                            Text("Silver Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                        }
                        Text("Text field")
                            .foregroundColor(Color.blue)
                    }
                    
                    // Equal sign
                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                        .symbolEffect(.pulse)
                    
                    // Conversion section
                    VStack{
                        HStack{
                            Text("Gold Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                            Image(.goldpiece)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 33.0)
                        }
                        Text("Text field")
                            .foregroundColor(Color.blue)
                    }
                }
                
                Spacer()
                
                HStack{
                    Spacer()
                    // Info button
                    Image(systemName: "info.circle.fill")
                        .padding(.trailing, 50)
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                    
                }
            }
//            .border(.blue)
        }
    }
}

#Preview {
    ContentView()
}
