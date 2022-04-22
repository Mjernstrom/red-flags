//  ContentView.swift
//  Red Flags

import SwiftUI
import ToastUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 15) {
                
                HomePageView()
                
                NavigationLink(destination: DudesView(), label: {
                        Text("Dudes click here")
                            .font(.system(size: 30, weight: .bold, design: .rounded))
                            .foregroundColor(.black)
                            .frame(width: 300, height: 80)
                            .background(Color.red)
                            .cornerRadius(15)
                })
                NavigationLink(destination: ChicksView(), label: {
                        Text("Chicks click here")
                            .font(.system(size: 30, weight: .bold, design: .rounded))
                            .foregroundColor(.black)
                            .frame(width: 300, height: 80)
                            .background(Color.red)
                            .cornerRadius(15)
                })
                NavigationLink(destination: EverybodyView(), label: {
                        Text("Others click here")
                            .font(.system(size: 30, weight: .bold, design: .rounded))
                            .foregroundColor(.black)
                            .frame(width: 300, height: 80)
                            .background(Color.red)
                            .cornerRadius(15)
                })
            }
        }
        .accentColor(.red)
    }
}

struct HomePageView: View {
    var body: some View {
        VStack {
            Spacer()
            Image("red-flag")
            Spacer()
        }
    }
}

struct DudesView: View {
    
    @State private var PresentingToast : Bool = false
    
    let DudeList = [
        "Drink if you dated someone into rock climbing, you should have seen that coming",
        "Give out two drinks if she befriended your friend group, I'm sure they need it more than you do",
        "Drink if she's obssesed with lizards or amphibians",
        "Drink if you can't see the floor in her car.",
        "Drink if they were a 'horse girl'.",
        "Drink if her natural hair color is red.",
        "Drink if she talks to her mother about your sex life, no family should be that close.",
        "Drink if she has an OnlyFans." ,
        "Drink if he snap score is over a million.",
        "Drink if they changed their hair color every week.",
        "Drink if they stopped taking birth control without telling you, or poked holes in the condom.",
        "Drink if she says 'I'm not crazy'.",
        "Drink if she calls her biological dad, 'daddy'.",
        "Drink if she thinks every time you hang out with your boys it's a problem.",
        "Drink if her favorite drink is Hard Lemonade.",
        "Drink if she's a psychology major."
    ]
    
    var body: some View {
        var Card = ""
        VStack {
            Spacer()
            Button {
                  PresentingToast = true
                  Card = DudeList.randomElement()!
                } label: {
                  Text("Hit Me")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .frame(width: 300, height: 100)
                    .foregroundColor(.black)
                    .background(Color.red)
                    .cornerRadius(20.0)
                }
                .toast(isPresented: $PresentingToast) {
                  ToastView {
                    VStack {
                      Text(Card)
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

struct ChicksView: View {
    
    @State private var PresentingToast : Bool = false
    
    let ChickList = [
        "Drink if he's a fratboy, you still haven't learneed hun.",
        "Drink if he has plaid sheets.",
        "Guys, if 'Wolf of Wall Street' take a drink.",
        "Drink if they were a 'car guy'.",
        "Drink if he  was in the military.",
        "Drink if he has a 'J' name.",
        "Finish your drink if he has an OnlyFans.",
        "If they have a picture with a dead fish on social media, take a drink.",
        "Drink if they play golf.",
        "Drink if he is a World War II buff.",
        "Drink if he has a 'Saturday's are for the Boys' flag.",
        "Drink if he says 'I'm not an asshole'.",
        "Drink if he can't be in touch with his emotions.",
        "Drink if he uses a 3-in-1 shampoo.",
        "Drink if his favorite drink is cheap beer.",
        "Drink if he is a political science major."
    ]
    
    var body: some View {
        var Card = ""
        VStack {
            Spacer()
            Button {
                  PresentingToast = true
                  Card = ChickList.randomElement()!
                } label: {
                  Text("Hit Me")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .frame(width: 300, height: 100)
                    .foregroundColor(.black)
                    .background(Color.red)
                    .cornerRadius(20.0)
                }
                .toast(isPresented: $PresentingToast) {
                  ToastView {
                    VStack {
                      Text(Card)
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

struct EverybodyView: View {
    
    @State private var PresentingToast : Bool = false
    
    let EverybodyList = [
        "Drink if their personality is 'smoking weed'.",
        "Drink if they lived in the same house or across the hall.",
        "Give out 5 drinks if they still talk to their ex.",
        "Drink if they check your phone.",
        "Give out 3 drinks if all your friends warned you about them.",
        "If they describe anybody of the opposite gender as the enemy.",
        "Drink if they have a foot fetish.",
        "Drink if their taste in music is 'better'.",
        "Drink if you have been gaslit.",
        "Drink if their primary form of communication is snapchat.",
        "Give 4 drinks if they went abroad and it 'completely changed their life.'",
        "Drink if they dispear for days at a time.",
        "Drink if they have a religious quote in their bio."
    ]
    
    var body: some View {
        var Card = ""
        VStack {
            Spacer()
            Button {
                  PresentingToast = true
                  Card = EverybodyList.randomElement()!
                } label: {
                  Text("Hit Me")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .frame(width: 300, height: 100)
                    .foregroundColor(.black)
                    .background(Color.red)
                    .cornerRadius(20.0)
                }
                .toast(isPresented: $PresentingToast) {
                  ToastView {
                    VStack {
                      Text(Card)
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
