//
//  RecompensasView.swift
//  baseProyecto
//
//  Created by CEDAM16 on 05/12/23.
//

import SwiftUI

struct RecompensasView: View {
    let metas = ["Supera tu récord de reciclaje por día", "Recicla en nuecos puntos de recolección", "Recicla 2 nuevos materiales", "Comparte la PokeTrash con tus amigos", "Lee un artículo de la sección de noticias"]
    let puntos = ["50 puntos", "30 puntos", "40 puntos", "10 puntos", "5 puntos"]
    
    let recompensa = ["10% de descuento para tu próxima compra en 'El Cuais'", "10% de descuento para tu próxima compra en la libreria", "Segundo alimento al 50% de descuento en cualquier cafetería"]
    let lugarRecompensa = ["El Cuais", "Libreria", "Cafetería"]
    
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
                    HStack {
                        Image("imagen-perfil")
                            .resizable()
                            .frame(width: 60, height: 60)
                        
                        VStack(alignment: .leading) {
                            Text("Hola Isaac").font(.title2).bold()
                        
                            Text("156 puntos")
                            
                            Text("Junta más puntos y obten más recompensas")
                        }
                    }
                    .frame(width: 340, height: 150)
                    .background(.white)
                    .cornerRadius(10)
                    .padding(.top, 20)
                    .frame(width: 350, height: 200)
                    .shadow(color: .gray, radius: 10)
                    .foregroundColor(.black)
                    
                    Text("Resumen semanal")
                        .font(.title)
                        .bold()
                        .padding(.leading, -90)
                    
                    HStack {
                        VStack (alignment: .leading){
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
                        }.padding(.trailing, 30)
                            .foregroundColor(.black)
                        
                        VStack(alignment: .center) {
                            ZStack {
                                CirculoView(slices: [(5, .red), (1.6, .clear)], data: [(5, .red)])
                                    .frame(width: 60, height: 60)
                                Circle()
                                    .frame(width: 40)
                                    .foregroundColor(Color("VerdeD"))
                            }
                            
                            Text("Nivel 1")
                                .foregroundStyle(Color(.white))
                                .fontWeight(.bold)
                            
                            Text("Eco Iniciador")
                                .foregroundStyle(.white.opacity(0.8))
                                .fontWeight(.bold)
                        }
                    }
                    .frame(width: UIScreen.screenWidth, height: 170)
                    .background(
                        .linearGradient(
                            colors: [
                                .white,
                                .white,
                                Color("VerdeD"),
                                Color("VerdeD")
                            ],
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                    
                    Text("Misiones")
                        .font(.title)
                        .bold()
                        .padding(.leading, -160)
                        .padding(.top, 10)
                    
                    HStack {
                        Text("Supera tu récord por día")
                            .font(.caption)
                            .bold()
                            .foregroundColor(Color("VerdeD"))
                        
                        Spacer()
                        
                        Text("50 puntos")
                            .font(.caption)
                            .bold()
                            .foregroundColor(Color("Rojo"))
                    }.padding(.horizontal, 30)
                    
                    Button {
                        //
                    } label: {
                        Text("Canjear puntos")
                            .font(.caption)
                            .padding(.horizontal)
                            .padding(.vertical, 8)
                            .foregroundColor(.primary)
                            .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.gray, lineWidth: 1)
                        )
                    }.padding()
                    
                    Divider()
                    
                    HStack {
                        VStack(alignment: .leading) {
                            ForEach(0..<metas.count) { item in
                                Text("\(metas[item])")
                                    .font(.caption)
                                    .padding(.vertical, 3)
                                    .foregroundColor(Color("VerdeD"))
                                    .bold()
                            }
                        }
                        
                        Spacer()
                        
                        VStack(alignment: .trailing) {
                            ForEach(0..<puntos.count) { item in
                                Text("\(puntos[item])")
                                    .font(.caption)
                                    .padding(.vertical, 3)
                                    .foregroundColor(Color("Rojo"))
                                    .bold()
                            }
                        }
                    }.padding(.horizontal)
                    
                    Text("Recompensas")
                        .font(.title)
                        .bold()
                        .padding(.leading, -160)
                        .padding(.top, 10)
                    
                    ForEach(0..<recompensa.count) { item in
                        HStack {
                            Rectangle()
                                .frame(width: 100, height: 80)
                                .foregroundColor(.gray)
                                .padding(.leading)
                            
                            VStack(alignment: .leading) {
                                Text("\(recompensa[item])")
                                    .font(.caption)
                                
                                Text("\(lugarRecompensa[item])")
                                    .font(.caption)
                                    .foregroundColor(.gray.opacity(0.5))
                            }
                        }.frame(width: 340, height: 120)
                            .background(.white)
                            .foregroundColor(.black)
                            .cornerRadius(10)
                            .padding(.top, 20)
                            .frame(width: 350, height: 150)
                            .shadow(color: .gray, radius: 10)
                            .overlay(
                                HStack {
                                    
                                    Image("icono-Mapa")
                                        .resizable()
                                        .frame(width: 20, height: 20)
                                    
                                    Text("100")
                                        .bold()
                                        .foregroundColor(.black)
                                    
                                }.position(x:300, y: 130)
                            )
                    }
                    VStack {
                        //
                    }.padding(.bottom, 150)
                }.padding(.top, 20)
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
            }.toolbar {
                ToolbarItemGroup(placement: .topBarLeading) {
                    Button {
                        //
                    } label: {
                        Image("logob-Poke")
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

#Preview {
    RecompensasView()
}
