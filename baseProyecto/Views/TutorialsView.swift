//
//  TutorialsView.swift
//  baseProyecto
//
//  Created by Yael Javier Zamora Moreno on 27/03/24.
//

import SwiftUI

struct TutorialsView: View {
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
                    ForEach(0..<10) { i in
                        VStack {
                            HStack {
                                YouTubeView(videoId: "xCaI-5WVRlY")
                                    .frame(width: 300, height: 200)
                                    .cornerRadius(20)
                                    .padding()
                                    
                                Text("Reciclando Botellas\nde plástico")
                                    .font(.largeTitle)
                                    .bold()
                            }
                            Divider()
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    TutorialsView()
}
