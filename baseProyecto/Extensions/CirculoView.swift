//
//  CirculoView.swift
//  baseProyecto
//
//  Created by CEDAM16 on 06/12/23.
//

import SwiftUI

struct CirculoView: View 
{
    @State var slices:[(Double, Color)]
    
    let data: [(Double, Color)]
       
       var body: some View {
            Canvas { context, size in
               let total = slices.reduce(0) { $0 + $1.0 }
               context.translateBy(x: size.width * 0.5, y: size.height * 0.5)
               var pieContext = context
               pieContext.rotate(by: .degrees(-90))
               let radius = min(size.width, size.height) * 0.48
               var startAngle = Angle.zero
               for (value, color) in slices {
                   let angle = Angle(degrees: 360 * (value / total))
                   let endAngle = startAngle + angle
                   let path = Path { p in
                       p.move(to: .zero)
                       p.addArc(center: .zero, radius: radius, startAngle: startAngle, endAngle: endAngle, clockwise: false)
                       p.closeSubpath()
                   }
                   pieContext.fill(path, with: .color(color))
                   startAngle = endAngle
               }
           }
           .aspectRatio(1, contentMode: .fit)
       }
}


