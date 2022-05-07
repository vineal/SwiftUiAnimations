//
//  ContentView.swift
//  SwiftUIAnimations
//
//  Created by Vineal Viji Varghese on 07/05/2022.
//

import SwiftUI

struct ContentView: View {
    @State var moveY = true
    var body: some View {
        VStack{
            RocketShape()
                .offset(x: 0, y: moveY ? 0: -800)
            Button {
                withAnimation(SwiftUI.Animation.spring(response: 0.75, dampingFraction: 0.5, blendDuration: 3)){
                    self.moveY.toggle()
                }
            } label: {
                Text(moveY ? "Launch Rocket" : "Retrieve")
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
