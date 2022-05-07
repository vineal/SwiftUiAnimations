//
//  RocketShape.swift
//  SwiftUIAnimations
//
//  Created by Vineal Viji Varghese on 07/05/2022.
//

import SwiftUI

struct RocketShape: View {
    
    var body: some View {
        ZStack{
            RocketBody()
                .fill(
                    LinearGradient(gradient: Gradient(colors: [.white, .black]), startPoint: .top, endPoint: .bottom)
                )
            RocketFlames()
                .fill(
                    LinearGradient(gradient: Gradient(colors: [.black,.blue.opacity(0.75),.orange,.red]), startPoint: .top, endPoint: .bottom)
                )
        }
    }
}

struct RocketBody: Shape {
    func path(in rect: CGRect) -> Path {
        
        var path1 = Path()
        //top pointy dome of the rocket
        path1.move(to: CGPoint(x: 200, y: 250))
        path1.addCurve(to: CGPoint(x: 250, y: 300),
                      control1: CGPoint(x: 235, y: 275),
                      control2: CGPoint(x: 240, y: 285))
        path1.addLine(to: CGPoint(x: 150, y: 300))
        path1.addCurve(to: CGPoint(x: 200, y: 250),
                      control1: CGPoint(x: 165, y: 275),
                      control2: CGPoint(x: 160, y: 285))
        
        //left and right curves of the rocket body
        path1.move(to: CGPoint(x: 150, y: 300))
        path1.addCurve(to: CGPoint(x: 150, y: 450),
                      control1: CGPoint(x: 125, y: 350),
                      control2: CGPoint(x: 125, y: 400))
        path1.addLine(to: CGPoint(x: 250, y: 450))
        path1.addCurve(to: CGPoint(x: 250, y: 300),
                     control1: CGPoint(x: 275, y: 400),
                     control2: CGPoint(x: 275, y: 350))
        
        
        return path1
    }
}

struct RocketFlames: Shape {
    func path(in rect: CGRect) -> Path {
        
        var path2 = Path()
        //fire
        //flame 1
        path2.move(to: CGPoint(x: 150, y: 455))
        path2.addCurve(to: CGPoint(x: 150, y: 555),
                      control1: CGPoint(x: 125, y: 515),
                      control2: CGPoint(x: 125, y: 525))
        path2.addLine(to: CGPoint(x: 155, y: 485))
        //flame 2
        path2.addCurve(to: CGPoint(x: 165, y: 650),
                      control1: CGPoint(x: 185, y: 555),
                      control2: CGPoint(x: 135, y: 575))
        path2.addCurve(to: CGPoint(x: 185, y: 460),
                      control1: CGPoint(x: 180, y: 555),
                      control2: CGPoint(x: 195, y: 575))
        //flame 3
        path2.addCurve(to: CGPoint(x: 200, y: 730),
                      control1: CGPoint(x: 175, y: 575),
                      control2: CGPoint(x: 220, y: 650))
        path2.addCurve(to: CGPoint(x: 210, y: 550),
                      control1: CGPoint(x: 260, y: 675),
                      control2: CGPoint(x: 220, y: 635))
        //flame 4
        path2.addCurve(to: CGPoint(x: 238, y: 650),
                      control1: CGPoint(x: 215, y: 530),
                      control2: CGPoint(x: 230, y: 555))
        path2.addCurve(to: CGPoint(x: 245, y: 550),
                      control1: CGPoint(x: 250, y: 600),
                      control2: CGPoint(x: 260, y: 600))
        path2.addCurve(to: CGPoint(x: 245, y: 485),
                      control1: CGPoint(x: 230, y: 500),
                      control2: CGPoint(x: 230, y: 480))
        //flame 5
        path2.addCurve(to: CGPoint(x: 260, y: 555),
                      control1: CGPoint(x: 250, y: 515),
                      control2: CGPoint(x: 255, y: 515))
        path2.addCurve(to: CGPoint(x: 250, y: 455),
                      control1: CGPoint(x: 275, y: 515),
                      control2: CGPoint(x: 275, y: 515))
        
        path2.addLine(to: CGPoint(x: 150, y: 455))
        return path2
    }
}


struct RocketShape_Previews: PreviewProvider {
    static var previews: some View {
        RocketShape()
    }
}
