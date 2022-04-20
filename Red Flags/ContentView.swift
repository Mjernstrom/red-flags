//  ContentView.swift
//  Red Flags

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            Image("red-flag")
            Spacer()
            Text("Press to play")
                .font(.system(size: 30, weight: .bold))
                .padding()
                .foregroundColor(.white)
                .background(Color.black)
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
