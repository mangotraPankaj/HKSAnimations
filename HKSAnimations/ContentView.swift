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
        print(animationAmount)
       return VStack {
            Stepper("Scale Amount", value: $animationAmount.animation(
                        Animation.easeInOut(duration: 1)
                            .repeatCount(3, autoreverses: true)
            ), in: 1...10)
            Spacer()
            Button(action: {
                self.animationAmount += 1
            }, label: {
                Text("Tap Me")
            })
            .padding(40)
            .background(Color.red)
            .foregroundColor(.white)
            .clipShape(Circle())
            .scaleEffect(animationAmount)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
