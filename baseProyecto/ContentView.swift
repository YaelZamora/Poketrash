//
//  ContentView.swift
//  baseProyecto
//
//  Created by Alberto Besne Cabrera on 04/12/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 1
    
    var body: some View {
        
        ZStack {
            TabView(selection: $selectedTab){
                HomeView().tag(1)
                LocationView().tag(2)
                RecompensasView().tag(3)
                UserView().tag(4)
            }
            VStack {
                Spacer()
                ZStack {
                    HStack{
                        myTabButton(title: "Home", tags: 1, icon: "icono-Home").padding(.leading, 20)
                        myTabButton(title: "Options", tags: 2, icon: "icono-Lugar")
                        Spacer()
                        myTabButton(title: "Profile", tags: 3, icon: "icono_Recompensas")
                        myTabButton(title: "Lalala", tags: 4, icon: "icons_Perfil").padding(.trailing, 20)
                    }.frame(width: 350, height: 65).background(.green).cornerRadius(40)
                    NavigationLink{
                        CameraView()
                    } label: {
                        Image("escaneo-qr")
                            .renderingMode(.template)
                            .scaledToFit()
                            .foregroundStyle(Color("VerdeF"))
                            .frame(width: 90, height: 90)
                            .background(.white)
                            .cornerRadius(50)
                            .shadow(radius: 10)
                            .font(.largeTitle)
                            .foregroundColor(.black)
                    }.frame(width: 90, height: 90).position(x: UIScreen.screenWidth / 2, y: 25)
                }.frame(height: 100)
            }
        }.navigationBarBackButtonHidden()
    }
    
    func myTabButton(title: String, tags: Int, icon: String) -> some View {
        VStack{
            Button {
                withAnimation {
                    selectedTab = tags
                }
            } label: {
                Image(icon).renderingMode(.template).resizable().scaledToFit().frame(width: 30).foregroundColor(selectedTab == tags ? .white : .secondary)
            }.frame(maxWidth: 50)
                .foregroundColor(selectedTab == tags ? .white : .secondary)
        }
    }
}

#Preview {
    ContentView()
}
