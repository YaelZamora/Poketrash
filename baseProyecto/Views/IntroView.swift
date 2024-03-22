//
//  IntroView.swift
//  baseProyecto
//
//  Created by CEDAM16 on 05/12/23.
//

import SwiftUI

struct IntroView: View 
{
    @State var navIntro = false
    
    var body: some View {
        ZStack {
            if navIntro {
                LoginView()
            } else {
                VStack {
                    Image("logo-Poke")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 230)
                }
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3.5){
                withAnimation{
                    navIntro = true
                }
            }
        }
    }
}

#Preview {
    IntroView()
}
