//
//  BadgeBackground.swift
//  SwiftUI-Example
//
//  Created by user on 08/06/22.
//

import SwiftUI

struct BadgeBackground: View {
    
    static let gradientStart = Color(red: 239.0 / 255, green: 120.0 / 255, blue: 221.0 / 255)
    static let gradientEnd = Color(red: 239.0 / 255, green: 172.0 / 255, blue: 120.0 / 255)
    
    var body: some View {
        
        GeometryReader { geometry in
            
            Path { path in
                var width: CGFloat = min(geometry.size.width, geometry.size.height)
                let height = width
                let xScale: CGFloat = 0.832
                let xOffset = (width * (1.0 - xScale)) / 2.0
                width *= xScale
                path.move(to: CGPoint(x: width * 0.95 + xOffset,
                                      y: height * (0.20 + HexagonParameters.adjustment)))
                HexagonParameters.segments.forEach { segment in
                    
                    let lineX = width * segment.line.x + xOffset
                    let lineY = height * segment.line.y
                    
                    path.addLine(to: CGPoint.init(x: lineX, y: lineY))
                    
                    let curveX = width * segment.curve.x + xOffset
                    let curveY = height * segment.curve.y
                    let controlX = width * segment.control.x + xOffset
                    let controlY = height * segment.control.y
                    
                    path.addQuadCurve(to:CGPoint(x: curveX, y: curveY), control: CGPoint(x: controlX,y: controlY))
                }
            }
            .fill(.linearGradient(
                Gradient(colors: [Self.gradientStart, Self.gradientEnd]),
                startPoint: UnitPoint(x: 0.5, y: 0),
                endPoint: UnitPoint(x: 0.5, y: 0.6)
            ))
        }
        .aspectRatio(1, contentMode: .fit)
    }
}

struct BadgeBackground_Previews: PreviewProvider {
    static var previews: some View {
        BadgeBackground()
    }
}
