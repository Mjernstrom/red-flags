//  DudesView.swift
//  Red Flags

import SwiftUI
import ToastUI

struct DudesView: View {
    
    @State private var PresentingToast : Bool = false
    
    let DudeList = [
        "If you dated someone into rock climbing",
        "If she has started a group message with your friends",
        "If she's obssesed with lizards or amphibians",
        "If you can't see the floor in her car",
        "If she was a 'horse girl'",
        "If she has natural red hair",
        "If she talks to her mother about your sex life",
        "If she has an OnlyFans" ,
        "If her snap score is over a million",
        "If she changed her hair color every week",
        "If she stopped taking birth control without telling you, or poked holes in the condom",
        "If she says 'I'm not crazy'",
        "If she calls her biological dad, 'daddy'",
        "If she thinks every time you hang out with your boys it's a problem",
        "If her favorite drink is seltzer",
        "If she was a psychology major",
        "If all of her TV logins are her ex's",
        "If her pop-up ads are fancy loungewear",
        "If she has psychedelic tapestry over her bed"
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
                  prompt = DudeList.randomElement()!
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

