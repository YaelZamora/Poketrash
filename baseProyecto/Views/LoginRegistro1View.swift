//
//  LoginRegistro1View.swift
//  baseProyecto
//
//  Created by CEDAM16 on 06/12/23.
//

import SwiftUI

struct LoginRegistro1View: View 
{
    @State var username = ""
    @State var email = ""
    @State var confirmemail = ""
    
    var body: some View {
        
        NavigationStack {
        
            ZStack {
            
                VStack {
                    
                    HStack {
                        RoundedRectangle(cornerRadius: 25)
                            .frame(width: 150, height: 5)
                            .foregroundColor(Color("VerdeD"))
                        RoundedRectangle(cornerRadius: 25)
                            .frame(width: 150, height: 5)
                            .foregroundColor(.gray.opacity(0.5))
                    }
                    .padding(.top, 20)
                    
                    TextField("Nombre de usuario", text: $username)
                        .foregroundColor(.black)
                        .frame(width: 300)
                        .underlineTextField()
                        .padding(.top, 80)
                    
                    TextField("Email", text: $email)
                        .foregroundColor(.black)
                        .frame(width: 300)
                        .underlineTextField()
                    
                    TextField("Confirma tu email", text: $confirmemail)
                        .foregroundColor(.black)
                        .frame(width: 300)
                        .underlineTextField()
                    
                    NavigationLink {
                        LoginRegistro2View()
                    } label: {
                        Text("Siguiente")
                            .font(.body)
                            .frame(width: 300, height: 35)
                            .foregroundColor(.white)
                            .background(Color("Rojo"))
                            .cornerRadius(15)
                            .padding(.top, 100)
                    }
                    
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    LoginRegistro1View()
}
