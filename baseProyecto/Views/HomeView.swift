//
//  HomeView.swift
//  baseProyecto
//
//  Created by CEDAM01 on 05/12/23.
//

import SwiftUI

struct HomeView: View 
{
    @State private var selectedButton = 0
    let imagenes = ["imagen-Novedades2", "imagen-Novedades3"]
    let textos = ["Protección de 6,5 millones de acres de tierra natal en Canada", "Reciclamos conchas de moluscos en Hong Kong para cultivar nuevos arrecifes de ostras"]
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    Rectangle()
                        .ignoresSafeArea()
                        .frame(width: UIScreen.screenWidth, height: 200)
                        .foregroundColor(Color("VerdeD"))
                    Spacer()
                }
                
                ScrollView {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(0..<2) { item in
                                VStack(alignment: .leading) {
                                    Image("\(imagenes[item])")
                                        .resizable()
                                        .overlay(
                                            VStack(alignment: .leading) {
                                                Spacer()
                                                
                                                Text("\(textos[item])")
                                                    .font(.caption)
                                                    .foregroundColor(.white)
                                                    .bold()
                                                    .frame(width: 190)
                                                    .padding(.bottom, 10)
                                            }
                                        )
                                }
                                .frame(width: 340, height: 150)
                                .background(.white)
                                .cornerRadius(10)
                                .padding(.top, 20)
                                .frame(width: 350, height: 200)
                                .shadow(color: .gray, radius: 10)
                                
                            }
                        }.padding(.leading, 30)
                    }
                    HStack {
                        Image("imagen-perfil")
                            .resizable()
                            .frame(width: 60, height: 60)
                        VStack(alignment: .leading) {
                            Text("Hola Isaac")
                                .font(.title2)
                                .fontWeight(.bold)
                            Text("¿Cómo mejoraremos el mundo hoy?")
                                .font(.caption)
                            Text("156 puntos")
                                //.padding(.vertical, 5)
                        }
                        .padding(.horizontal, 15)
                    }
                    HStack {
                        Button {
                            selectedButton = 0
                        } label: {
                            Text("Resumen Semanal")
                                .font(.caption2)
                                .foregroundColor((selectedButton == 0) ? .white : .black)
                                .bold()
                                .padding(.horizontal, 20)
                                .padding(.vertical, 5)
                                .background((selectedButton == 0) ? Color("VerdeF") : .gray.opacity(0.5))
                                .cornerRadius(30)
                        }
                        
                        Button {
                            selectedButton = 1
                        } label: {
                            Text("Recicla y reutiliza")
                                .font(.caption2)
                                .foregroundColor((selectedButton == 1) ? .white : .black)
                                .bold()
                                .padding(.horizontal, 20)
                                .padding(.vertical, 5)
                                .background((selectedButton == 1) ? Color("VerdeF") : .gray.opacity(0.5))
                                .cornerRadius(30)
                        }
                        
                        Button {
                            selectedButton = 2
                        } label: {
                            Text("Noticias")
                                .font(.caption2)
                                .foregroundColor((selectedButton == 2) ? .white : .black)
                                .bold()
                                .padding(.horizontal, 20)
                                .padding(.vertical, 5)
                                .background((selectedButton == 2) ? Color("VerdeF") : .gray.opacity(0.5))
                                .cornerRadius(30)
                        }
                    }
                    .padding(.vertical, 10)
                    
                    ZStack() {
                        Rectangle()
                            .fill(
                                LinearGradient(
                                    gradient: Gradient(colors: [Color.white, Color("VerdeD")]),
                                    startPoint: .leading,
                                    endPoint: .bottom)
                            )
                            .frame(width: UIScreen.screenWidth, height: 150)
                        HStack {
                            
                            VStack(alignment: .leading) {
                                Text("Puntos obtenido en la última semana")
                                    .font(.caption)
                                Text("89 puntos")
                                    .foregroundColor(Color("Rojo"))
                                    .fontWeight(.bold)
                                Text("Día con mayor puntaje")
                                    .font(.caption)
                                Text("Martes con 70 puntos")
                                    .foregroundColor(Color("Rojo"))
                                    .fontWeight(.bold)
                                Text("Materiales reciclados")
                                    .font(.caption)
                                Text("Metal/Plasticos")
                                    .foregroundColor(Color("Rojo"))
                                    .fontWeight(.bold)
                            }
                            .padding(.horizontal, 30)
                            .foregroundColor(.black)
                            
                            VStack(alignment: .center) {
                                ZStack {
                                    CirculoView(slices: [(5, .red), (1.6, .clear)], data: [(5, .red)]).frame(width: 60, height: 60)
                                    Circle().frame(width: 40).foregroundColor(Color("VerdeD"))
                                }
                                
                                Text("Nivel 1")
                                    .foregroundStyle(Color(.white))
                                    .fontWeight(.bold)
                                
                                Text("Eco Iniciador")
                                    .foregroundStyle(.white.opacity(0.8))
                                    .fontWeight(.bold)
                            }
                            .padding(.trailing)
                        }
                    }
                    HStack(alignment: .bottom) {
                        Text("Recicla y reutiliza")
                            .font(.title2)
                            .foregroundStyle(Color("VerdeF"))
                            .fontWeight(.bold)
                            .padding(.horizontal)
                    }
                    .padding(.top, 15)
                    
                    VStack {
                        HStack {
                            
                            Spacer()
                            
                            ZStack {
                                
                                RoundedRectangle(cornerRadius: 15)
                                
                                VStack {
                                    Text("Plásticos")
                                        .foregroundStyle(Color(.white))
                                        .fontWeight(.bold)
                                        .padding(.horizontal, 20)
                                    
                                    Image("imagen-plastico")
                                        .resizable()
                                        .scaledToFit()
                                    
                                    Spacer()
                                }
                            }
                            .frame(width: 150, height: 110)
                            .foregroundStyle(Color("VerdeD"))
                            
                            Spacer()
                            
                            ZStack {
                                RoundedRectangle(cornerRadius: 15)
                                
                                VStack {
                                    Text("Vidrio")
                                        .foregroundStyle(Color(.white))
                                        .fontWeight(.bold)
                                        .padding(.horizontal, 20)
                                    
                                    Image("imagen-Vidrio")
                                        .resizable()
                                        .scaledToFit()
                                    
                                    Spacer()
                                }
                            }
                            .frame(width: 150, height: 110)
                            .foregroundStyle(Color("VerdeD"))
                            
                            Spacer()
                        }
                        .padding(.bottom)
                        HStack {
                            Spacer()
                            
                            ZStack {
                                RoundedRectangle(cornerRadius: 15)
                                
                                VStack {
                                    Text("Metal")
                                        .foregroundStyle(Color(.white))
                                        .fontWeight(.bold)
                                        .padding(.horizontal, 20)
                                    
                                    Image("imagen-Lata")
                                        .resizable()
                                        .scaledToFit()
                                    
                                    Spacer()
                                }
                            }
                            .frame(width: 150, height: 110)
                            .foregroundStyle(Color("VerdeD"))
                            
                            Spacer()
                            
                            ZStack {
                                RoundedRectangle(cornerRadius: 15)
                                
                                VStack {
                                    Text("Papel")
                                        .foregroundStyle(Color(.white))
                                        .fontWeight(.bold)
                                        .padding(.horizontal, 20)
                                    
                                    Image("imagen-Papel")
                                        .resizable()
                                        .scaledToFit()
                                    
                                    Spacer()
                                }
                            }
                            .frame(width: 150, height: 110)
                            .foregroundStyle(Color("VerdeD"))
                            
                            Spacer()
                        }
                        
                        Text("Todas las categorias")
                            .font(.caption)
                            .foregroundStyle(Color("VerdeD"))
                            .fontWeight(.bold)
                            .padding(.top, 5)
                    }
                    
                    Text("Noticias")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundStyle(Color("VerdeF"))
                        .padding()
                    
                    Spacer()
                }
                .padding(.top, 20)
                .toolbar {
                    ToolbarItemGroup(placement: .cancellationAction) {
                        Button {
                            //
                        } label: {
                            Image("logob-Poke")
                                .renderingMode(.template)
                                .resizable()
                                .scaledToFit()
                                .foregroundColor(.white)
                                .frame(width: 60)
                        }
                    }
                }.toolbar {
                    ToolbarItemGroup(placement: .automatic) {
                        Button {
                            //
                        } label: {
                            Image("icono-Notificaciones")
                                .renderingMode(.template)
                                .resizable()
                                .scaledToFit()
                                .foregroundColor(.white)
                                .frame(width: 40)
                        }
                    }
                }.navigationBarBackButtonHidden()
            }
        }
    }
}

#Preview {
    HomeView()
}
