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
                NavigationLink(destination: GirlsView(), label: {
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


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
