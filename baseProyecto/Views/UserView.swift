//
//  UserView.swift
//  baseProyecto
//
//  Created by CEDAM01 on 06/12/23.
//

import SwiftUI

struct UserView: View {
    @State var email = ""
    
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
                    Image("imagen-perfil").resizable().frame(width: 180, height: 180).overlay(
                        Button {
                            //
                        } label: {
                            Image("icono-agregar").resizable().frame(width: 50, height: 50)
                        }.position(x:140, y: 165)
                    )
                    Text("Isaac Rodríguez").font(.title2).bold()
                    Text("Nivel 1").fontWeight(.light)
                    Text("Eco Iniciador").fontWeight(.light)
                    
                    VStack(alignment: .leading) {
                        Text("Email").padding(.top, 10)
                        HStack {
                            TextField("isaac.081150@gmail.com", text: $email).underlineTextField()
                            Image(systemName: "pencil")
                        }
                    }.padding(.horizontal)
                    
                    VStack(alignment: .leading) {
                        Text("Preguntas frecuentes")
                        Divider()
                        Text("Acerca de PokeTrash")
                        Divider()
                        Text("Aclaraciones")
                        Divider()
                        Text("Contacto")
                        Divider()
                    }.padding()
                    
                    HStack(spacing: 20) {
                        Button {
                            //
                        } label: {
                            Text("Cerrar sesión").font(.caption).padding(.horizontal).padding(.vertical, 8).foregroundColor(.black).overlay(
                                RoundedRectangle(cornerRadius: 5).stroke(.gray, lineWidth: 1)
                            )
                        }
                        Button {
                            //
                        } label: {
                            Text("Eliminar cuenta").font(.caption).padding(.horizontal).padding(.vertical, 8).foregroundColor(.black).overlay(
                                RoundedRectangle(cornerRadius: 5).stroke(.gray, lineWidth: 1)
                            )
                        }
                    }.padding(.top, 20)
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
    UserView()
}
