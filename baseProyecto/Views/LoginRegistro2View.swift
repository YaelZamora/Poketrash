//
//  LoginRegistro2View.swift
//  baseProyecto
//
//  Created by CEDAM16 on 06/12/23.
//

import SwiftUI

struct LoginRegistro2View: View {
    @State var password = ""
    @State var confirmpassword = ""
    
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
                            .foregroundColor(Color("VerdeD"))
                        
                    }
                    .padding(.top, 20)
                    
                    TextField("Constraseña", text: $password)
                        .foregroundColor(.black)
                        .frame(width: 300)
                        .underlineTextField()
                        .padding(.top, 80)
                    
                    TextField("Confirma tu contraseña", text: $confirmpassword)
                        .foregroundColor(.black)
                        .frame(width: 300)
                        .underlineTextField()
                    
                    NavigationLink {
                        OnBoardingView()
                    } label: {
                        Text("Finalizar")
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
    LoginRegistro2View()
}
