//
//  LoginView.swift
//  baseProyecto
//
//  Created by CEDAM16 on 05/12/23.
//

import SwiftUI

struct LoginView: View 
{
    @State var email = ""
    @State var password = ""
    
    var body: some View
    {
        NavigationStack
        {
            ZStack
            {
                VStack
                {
                    Image("logo-Poke")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 180)
                    TextField("Email", text: $email)
                        .foregroundColor(.black)
                        .frame(width: 300)
                        .underlineTextField()
                        .padding(.vertical)
                    TextField("Contraseña", text: $password)
                        .foregroundColor(.black)
                        .frame(width: 300)
                        .underlineTextField()
                    NavigationLink {
                        //
                    } label: {
                        Text("Olvide mi contraseña")
                            .font(.caption)
                            .foregroundColor(Color("VerdeD"))
                            .padding(.leading, 180)
                    }

                    Spacer()
                    NavigationLink {
                        ContentView()
                    } label: {
                        Text("Log in")
                            .font(.body)
                            .frame(width: 300, height: 35)
                            .foregroundColor(.white)
                            .background(Color("Rojo"))
                            .cornerRadius(15)
                            .padding()
                    }
                    Spacer()
                    Text("Continua con")
                        .font(.callout)
                        .padding(.bottom)
                    HStack
                    {
                        Spacer()
                        Image(systemName: "apple.logo")
                            .frame(width: 90, height: 50)
                            .font(.system(size: 50))                            
                            .padding(.horizontal)
                        Image("icono-Facebook")
                            .frame(width: 90, height: 50)
                            .padding(.horizontal)
                        Image("icono-Google")
                            .frame(width: 90, height: 50)
                            .padding(.horizontal)
                        Spacer()
                    }
                    Spacer()
                    HStack
                    {
                        Text("¿No tienes cuenta?")
                            .font(.footnote)
                            .foregroundColor(.secondary)
                        NavigationLink {
                            LoginRegistro1View()
                        } label: {
                            Text("Regístrate")
                                .font(.footnote)
                                .foregroundColor(Color("VerdeD"))
                        }

                    }
                    

                        
                    
                }
            }
        }
    }
}

#Preview {
    LoginView()
}
