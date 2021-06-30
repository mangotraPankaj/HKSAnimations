//
//  ContentView.swift
//  HKSAnimations
//
//  Created by Pankaj Mangotra on 30/06/21.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount: CGFloat = 1
    
    var body: some View {
        Button(action: {
            //self.animationAmount += 0.2
        }, label: {
            Text("Tap Me")
        })
        .padding(40)
        .background(Color.red)
        .foregroundColor(.yellow)
        .clipShape(Circle())
        .overlay(Circle()
                    .stroke(Color.blue)
                    .scaleEffect(animationAmount)
                    .opacity(Double(2 - animationAmount))
                    .animation(Animation.easeOut(duration: 1)
                                .repeatForever(autoreverses: false)
                    )
        )
        .onAppear {
            self.animationAmount = 2
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
