//
//  ContentView.swift
//  SwiftUIAnimations
//
//  Created by Vineal Viji Varghese on 07/05/2022.
//

import SwiftUI

struct ContentView: View {
    @State var moveShip = true
    @State var moveStars = true
    var body: some View {
        Color.black
            .ignoresSafeArea()
            .overlay(
                ZStack {
                    ForEach(1..<15) { _ in
                        Circle()
                            .fill()
                            .frame(width: 5, height: 5)
                            .position(x: CGFloat(Float.random(in: 10..<500)), y: CGFloat(Float.random(in: 10..<700)))
                            .foregroundColor(.white)
                    }
                    VStack{
                        RocketShape()
                            .offset(x: 0, y: moveShip ? 0: -800)
                        Button {
                            withAnimation(SwiftUI.Animation.spring(response: 0.75, dampingFraction: 0.5, blendDuration: 3)){
                                self.moveShip.toggle()
                            }
                        } label: {
                            Text(moveShip ? "Launch Rocket" : "Retrieve Shuttle")
                                .background(
                                    LinearGradient(gradient: Gradient(colors: [.white, .gray]), startPoint: .bottom, endPoint: .top)
                                )
                                .foregroundColor(.black)
                                .font(.title2.bold())
                                .cornerRadius(5)
                        }
                        
                    }
                }
            )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
