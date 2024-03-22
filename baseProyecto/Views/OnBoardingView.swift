//
//  OnBoardingView.swift
//  baseProyecto
//
//  Created by CEDAM01 on 05/12/23.
//

import SwiftUI

struct OnBoardingView: View {
    @State var indexSelected = 1
    @State var showNavigation = false
    let imagenes = ["imagen-Onboarding", "imagen-Onboarding2", "imagen-Onboarding3"]
    let titulo = ["Noticias", "Consigue recompensas", "Aprende y diviértete"]
    let informacion = ["Mantente informado sobre las últimas novedades del medio ambiente", "¡Recicla, aprende y gana recompensas!", "¡Empieza a aprender y divertirte hoy mismo!"]
    
    var body: some View {
        NavigationStack {
            VStack {
                Image((indexSelected == 1) ? "\(imagenes[0])" : (indexSelected == 2) ? "\(imagenes[1])" : "\(imagenes[2])")
                    .resizable()
                    .frame(width: 300, height: 250)
                
                Text((indexSelected == 1) ? "\(titulo[0])" : (indexSelected == 2) ? "\(titulo[1])" : "\(titulo[2])")
                    .font(.largeTitle)
                    .bold()
                
                Text((indexSelected == 1) ? "\(informacion[0])" : (indexSelected == 2) ? "\(informacion[1])" : "\(informacion[2])")
                
                HStack {
                    if indexSelected == 1 {
                        ZStack{ }.frame(width: 30, height: 10).background(.green).cornerRadius(5)
                    } else {
                        Circle().frame(width: 10).foregroundColor(.gray)
                    }
                    if indexSelected == 2 {
                        ZStack{ }.frame(width: 30, height: 10).background(.green).cornerRadius(5)
                    } else {
                        Circle().frame(width: 10).foregroundColor(.gray)
                    }
                    if indexSelected == 3 {
                        ZStack{ }.frame(width: 30, height: 10).background(.green).cornerRadius(5)
                    } else {
                        Circle().frame(width: 10).foregroundColor(.gray)
                    }
                }.padding(.bottom, 110)
                
                HStack {
                    NavigationLink {
                        ContentView()
                    } label: {
                        Text("Skip")
                    }
                    
                    Spacer()
                    
                    ZStack {
                        if showNavigation {
                            NavigationLink {
                                ContentView()
                            } label: {
                                Image(systemName: "house")
                                    .frame(width: 50, height: 50)
                                    .background(.gray.opacity(0.4))
                                    .cornerRadius(25)
                            }
                        } else {
                            Button {
                                if indexSelected < 3 {
                                    withAnimation {
                                        indexSelected += 1
                                    }
                                } else {
                                    showNavigation.toggle()
                                }
                            } label: {
                                Image(systemName: "chevron.right")
                                    .frame(width: 50, height: 50)
                                    .background(.gray.opacity(0.4))
                                    .cornerRadius(25)
                            }
                        }
                    }
                }.padding(.horizontal, 40)
                    .padding(.top, 40)
            }
        }
    }
}

#Preview {
    OnBoardingView()
}
