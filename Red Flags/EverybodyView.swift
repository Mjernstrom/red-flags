//  EverybodyView.swift
//  Red Flags

import SwiftUI
import ToastUI

struct EverybodyView: View {
    
    @State private var PresentingToast : Bool = false
    
    let EverybodyList = [
        "If their personality is 'smoking weed'",
        "If they lived in the same house or across the hall",
        "They still talk to their ex",
        "If they check your phone",
        "If all your friends warned you about them",
        "If they describe anybody of the opposite gender as the enemy",
        "If they have a foot fetish",
        "If their taste in music is 'better'",
        "If you have been gaslit",
        "If their primary form of communication is snapchat",
        "If they went abroad and it 'completely changed their life'",
        "If they dispear for days at a time",
        "If they have a religious quote in their bio"
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
                  prompt = EverybodyList.randomElement()!
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
