//
//  ContentView.swift
//  ConvenientDice-SwiftUI
//
//  Created by Tomas Sanni on 11/2/21.
//

import SwiftUI

struct ContentView: View
{
    @State var leftDiceNum = 1
    @State var rightDiceNum = 1
    
    
    var body: some View {
        ZStack {
            Color(red: 0.39, green: 0.43, blue: 0.45)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    Text("Convenient")
                        .font(Font.custom("Pacifico-Regular", size: 40))
                    
                    Image("diceLogo").resizable().frame(width: 100, height: 100)
                    
                    Text("Dice")
                        .font(Font.custom("Pacifico-Regular", size: 40))

                }
                

                Spacer()

                HStack {
                    DiceView(num: leftDiceNum)
                    DiceView(num: rightDiceNum)
                }
                .padding(.horizontal)
                
                Spacer()
                
                Button(action: {
                    self.leftDiceNum = Int.random(in: 1...6)
                    rightDiceNum = Int.random(in: 1...6)
                    
                }) {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.gray)
                        .padding(.horizontal)
                        
                        

                }
                .background(Color.black)
                .padding(.all)
            }
        }
    }
}


struct DiceView: View {
    
    let num: Int
    
    var body: some View {
        Image("dice\(num)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
          //  .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


