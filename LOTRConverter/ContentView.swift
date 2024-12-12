//
//  ContentView.swift
//  LOTRConverter
//
//  Created by James Raden on 12/11/24.
//

import SwiftUI

struct ContentView: View {
    @State var showExchangeInfo = false
    @State var leftAmount = ""
    @State var rightAmount = ""

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
                        }/*.padding(.bottom, -5.0)*/
                        
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
                    VStack{
                        HStack{
                            Text("Gold Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                            Image(.goldpiece)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 33.0)
                        }/*.padding(.bottom, -5.0)*/
                        
                        TextField("amount", text: $rightAmount)
                            .textFieldStyle(.roundedBorder)
                            .multilineTextAlignment(.trailing)
                    }
                    .padding()
                }
//                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .background(Color.black.opacity(0.5))
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
        }
    }
}

#Preview {
    ContentView()
}
