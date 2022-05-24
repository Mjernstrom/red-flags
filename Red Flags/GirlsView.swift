//  GirlsView.swift
//  Red Flags

import SwiftUI
import ToastUI

struct GirlsView: View {
    
    @State private var PresentingToast : Bool = false
    
    let ChickList = [
        "If he's in a frat",
        "If he has plaid sheets",
        "If they were a 'car guy'",
        "If he was in the military",
        "If he has a 'J' name",
        "If he has an OnlyFans",
        "If he has a picture with a dead fish on social media",
        "If he play's golf",
        "If he is a World War II buff",
        "If he has a 'Saturday's are for the Boys' flag",
        "If he says 'I'm not an asshole'",
        "If he can't be in touch with his emotions",
        "If he uses a 3-in-1 shampoo",
        "If his favorite drink is cheap beer",
        "If he is a political science major",
        "If his favorite movie is about a stock broker"
    ]
    
    let GameAction = [
        "Drink once",
        "Drink twice",
        "Give out two drinks"
    ]
    
    var body: some View {
        var prompt = ""
        var action = ""
        VStack {
            Spacer()
            Button {
                  PresentingToast = true
                  prompt = ChickList.randomElement()!
                  action = GameAction.randomElement()!
                } label: {
                  Text("Hit Me")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .frame(width: 300, height: 100)
                    .foregroundColor(.black)
                    .background(Color.red)
                    .cornerRadius(20.0)
                }
                Spacer().frame(minHeight: 50, maxHeight: 100)
                .toast(isPresented: $PresentingToast) {
                  ToastView {
                    VStack {
                      Text(prompt)
                        .font(.system(size: 20, weight: .bold, design: .rounded))
                        .frame(width: 300, height: 100)
                        .padding(.bottom)
                        .multilineTextAlignment(.center)
                      Text(action)
                        .font(.system(size: 20, weight: .bold, design: .rounded))
                        .frame(width: 300, height: 100)
                        .padding(.bottom)
                        .multilineTextAlignment(.center)
                      Button {
                        PresentingToast = false
                      } label: {
                        Text("Next")
                          .bold()
                          .foregroundColor(.white)
                          .padding(.horizontal)
                          .padding()
                          .background(Color.red)
                          .cornerRadius(8.0)
                      }
                    }
                  }
                }
        }
    }
}

