//
//  ContentView.swift
//  SwiftUIAnimations
//
//  Created by Vineal Viji Varghese on 07/05/2022.
//

import SwiftUI

struct ContentView: View {
    @State var transition = AnyTransition.identity
    var body: some View {
        VStack {
            RocketShape()
                .transition(transition)
            Button("Launch"){
                transition = AnyTransition.move(edge: .bottom)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
