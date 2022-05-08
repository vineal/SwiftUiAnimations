//
//  TennisBall.swift
//  SwiftUIAnimations
//
//  Created by Vineal Viji Varghese on 08/05/2022.
//

import SwiftUI

struct TennisBall: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        //circle
        path.move(to: CGPoint(x: 100, y: 100))
        path.addCurve(to: CGPoint(x: 100, y: 200),
            control1: CGPoint(x: 35, y: 100),
            control2: CGPoint(x: 35, y: 200))
        path.addCurve(to: CGPoint(x: 100, y: 100),
            control1: CGPoint(x: 165, y: 200),
            control2: CGPoint(x: 165, y: 100))
        
        //left curves
        path.move(to: CGPoint(x: 70, y: 110))
        path.addCurve(to: CGPoint(x: 70, y: 191),
            control1: CGPoint(x: 65, y: 130),
            control2: CGPoint(x: 110, y: 180))
        
        path.move(to: CGPoint(x: 70, y: 110))
        path.addCurve(to: CGPoint(x: 70, y: 191),
            control1: CGPoint(x: 60, y: 130),
            control2: CGPoint(x: 105, y: 180))
        
        //right curves
        path.move(to: CGPoint(x: 95, y: 100))
        path.addCurve(to: CGPoint(x: 115, y: 197),
            control1: CGPoint(x: 150, y: 105),
            control2: CGPoint(x: 150, y: 175))
        
        path.move(to: CGPoint(x: 95, y: 100))
        path.addCurve(to: CGPoint(x: 113, y: 198),
            control1: CGPoint(x: 145, y: 105),
            control2: CGPoint(x: 148, y: 175))
        return path
    }
}

struct TennisBall_Previews: PreviewProvider {
    static var previews: some View {
        TennisBall()
            .stroke()
    }
}
