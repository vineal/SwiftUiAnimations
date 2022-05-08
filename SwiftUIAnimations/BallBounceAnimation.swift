//
//  BallBounceAnimation.swift
//  SwiftUIAnimations
//
//  Created by Vineal Viji Varghese on 08/05/2022.
//

import SwiftUI

struct BallBounceAnimation: View {
    @State var xPosition = 100.0
    @State var yPosition = 150.0
    var body: some View {
        ZStack(){
        Circle()
            .frame(width: 100, height: 100)
            .position(x: xPosition, y: yPosition)
            .foregroundColor(.green)
        TennisBall()
            .stroke(.white)
            .position(x: xPosition+95, y: yPosition+230)
        }.onAppear {
            withAnimation(.spring(response: 2, dampingFraction: 0.1, blendDuration: 5).repeatForever()) {
//                let randomx = Double.random(in: 50..<100)
//                xPosition+=randomx
                yPosition+=300
            }
            
        }
    }
}

struct BallBounceAnimation_Previews: PreviewProvider {
    static var previews: some View {
        BallBounceAnimation()
    }
}
