//
//  RocketShape.swift
//  SwiftUIAnimations
//
//  Created by Vineal Viji Varghese on 07/05/2022.
//

import SwiftUI

struct RocketShape: Shape {
    func path(in rect: CGRect) -> Path {
        
        var path = Path()
        //top pointy dome of the rocket
        path.move(to: CGPoint(x: 200, y: 250))
        path.addCurve(to: CGPoint(x: 250, y: 300),
                      control1: CGPoint(x: 235, y: 275),
                      control2: CGPoint(x: 240, y: 285))
        path.addLine(to: CGPoint(x: 150, y: 300))
        path.addCurve(to: CGPoint(x: 200, y: 250),
                      control1: CGPoint(x: 165, y: 275),
                      control2: CGPoint(x: 160, y: 285))
        
        //left and right curves of the rocket body
        path.move(to: CGPoint(x: 150, y: 300))
        path.addCurve(to: CGPoint(x: 150, y: 450),
                      control1: CGPoint(x: 125, y: 350),
                      control2: CGPoint(x: 125, y: 400))
        path.addLine(to: CGPoint(x: 250, y: 450))
        path.addCurve(to: CGPoint(x: 250, y: 300),
                     control1: CGPoint(x: 275, y: 400),
                     control2: CGPoint(x: 275, y: 350))
        
        //fire
        //flame 1
        path.move(to: CGPoint(x: 150, y: 455))
        path.addCurve(to: CGPoint(x: 150, y: 555),
                      control1: CGPoint(x: 125, y: 515),
                      control2: CGPoint(x: 125, y: 525))
        path.addLine(to: CGPoint(x: 155, y: 485))
        //flame 2
        path.addCurve(to: CGPoint(x: 165, y: 650),
                      control1: CGPoint(x: 185, y: 555),
                      control2: CGPoint(x: 135, y: 575))
        path.addCurve(to: CGPoint(x: 185, y: 460),
                      control1: CGPoint(x: 180, y: 555),
                      control2: CGPoint(x: 195, y: 575))
        //flame 3
        path.addCurve(to: CGPoint(x: 200, y: 730),
                      control1: CGPoint(x: 175, y: 575),
                      control2: CGPoint(x: 220, y: 650))
        path.addCurve(to: CGPoint(x: 210, y: 550),
                      control1: CGPoint(x: 260, y: 675),
                      control2: CGPoint(x: 220, y: 635))
        //flame 4
        path.addCurve(to: CGPoint(x: 238, y: 650),
                      control1: CGPoint(x: 215, y: 530),
                      control2: CGPoint(x: 230, y: 555))
        path.addCurve(to: CGPoint(x: 245, y: 550),
                      control1: CGPoint(x: 250, y: 600),
                      control2: CGPoint(x: 260, y: 600))
        path.addCurve(to: CGPoint(x: 245, y: 485),
                      control1: CGPoint(x: 230, y: 500),
                      control2: CGPoint(x: 230, y: 480))
        //flame 5
        path.addCurve(to: CGPoint(x: 260, y: 555),
                      control1: CGPoint(x: 250, y: 515),
                      control2: CGPoint(x: 255, y: 515))
        path.addCurve(to: CGPoint(x: 250, y: 455),
                      control1: CGPoint(x: 275, y: 515),
                      control2: CGPoint(x: 275, y: 515))
        
        path.addLine(to: CGPoint(x: 150, y: 455))
        
        
        return path
    }
}

struct RocketShape_Previews: PreviewProvider {
    static var previews: some View {
        RocketShape()
    }
}
