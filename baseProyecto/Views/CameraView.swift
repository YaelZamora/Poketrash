//
//  CameraView.swift
//  baseProyecto
//
//  Created by CEDAM01 on 06/12/23.
//

import SwiftUI
import RealityKit
import ARKit
import AVFoundation

struct CameraView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                ARViewContainer()
                    .ignoresSafeArea()
                VStack {
                    Spacer()
                    
                    NavigationLink {
                        SelectPictureView()
                    } label: {
                        Image(systemName: "camera.aperture")
                            .font(.system(size: 50))
                            .padding()
                            .background(.gray)
                            .cornerRadius(80)
                    }
                    .padding(.bottom, 30)
                }
            }
        }
    }
}

struct ARViewContainer: UIViewRepresentable {
    
    func makeUIView(context: Context) -> some ARView {
        let arView = ARView(frame: .zero)
        arView.cameraMode = .ar
        
        return arView
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        //
    }
}

#Preview {
    CameraView()
}
