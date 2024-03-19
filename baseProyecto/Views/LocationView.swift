//
//  LocationView.swift
//  baseProyecto
//
//  Created by CEDAM01 on 06/12/23.
//

import SwiftUI
import MapKit

struct Location: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}

struct LocationView: View {
    @State var buscar = ""
    @State var selectedButton = 0
    @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 19.48344215, longitude: -99.2458080208569), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
    
    let locations = [
        Location(name: "Location", coordinate: CLLocationCoordinate2D(latitude: 19.48344215, longitude: -99.2458080208569)),
        Location(name: "Recolecta", coordinate: CLLocationCoordinate2D(latitude: 19.4844210, longitude: -99.2488080108460))
    ]
    
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
                VStack {
                    HStack {
                        TextField("", text: $buscar, prompt: Text("Buscar...").foregroundColor(.gray))
                        Image(systemName: "magnifyingglass").foregroundColor(.black)
                    }.padding().background(.white).cornerRadius(10).padding(.horizontal, 20).padding(.top, 16)
                    Spacer()
                }
                ZStack {
                    Map(coordinateRegion: $mapRegion, annotationItems: locations){location in
                        MapAnnotation(coordinate: location.coordinate) {
                            Image("icono-Mapa").resizable().frame(width: 30, height: 30)
                        }
                    }.ignoresSafeArea()
                    VStack {
                        HStack(spacing: 15) {
                            Button {
                                selectedButton = 0
                            } label: {
                                Text("Cerca de ti")
                                    .padding(.vertical, 8)
                                    .padding(.horizontal, 8)
                                    .background((selectedButton == 0) ? Color("VerdeD") : .gray.opacity(0.5))
                                    .foregroundColor((selectedButton == 0) ? .white : .black)
                                    .font(.caption)
                                    .cornerRadius(5)
                            }
                            Button {
                                selectedButton = 1
                            } label: {
                                Text("Cerca de casa")
                                    .padding(.vertical, 8)
                                    .padding(.horizontal, 8)
                                    .background((selectedButton == 1) ? Color("VerdeD") : .gray.opacity(0.5))
                                    .foregroundColor((selectedButton == 1) ? .white : .black)
                                    .font(.caption)
                                    .cornerRadius(5)
                            }
                            Button {
                                selectedButton = 2
                            } label: {
                                Text("Cerca de la ciudad")
                                    .padding(.vertical, 8)
                                    .padding(.horizontal, 8)
                                    .background((selectedButton == 2) ? Color("VerdeD") : .gray.opacity(0.5))
                                    .foregroundColor((selectedButton == 2) ? .white : .black)
                                    .font(.caption)
                                    .cornerRadius(5)
                            }
                        }
                        Spacer()
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(0..<3) { _ in
                                    HStack {
                                        VStack(alignment: .leading) {
                                            Text("Mercado del Trueque").font(.caption).bold().foregroundColor(.white)
                                            Text("Hacienda del Rosario, Ex el Rosario,\nAzcapotzalco, 02420 Ciudad de\nMéxico, CDMX").font(.caption).bold().foregroundColor(.white)
                                        }
                                        VStack{
                                            Image("icono-Mapa").resizable().frame(width: 40, height: 40)
                                            Button {
                                                //
                                            } label: {
                                                Text("Ver en el mapa").font(.caption).foregroundColor(.white)
                                            }
                                        }.padding(.leading, 20)
                                    }.padding().background(.green).cornerRadius(10).padding(.leading, 20)
                                }
                            }
                        }.padding(.bottom, 100)
                    }.padding(.top, 20)
                }.padding(.top, 100).navigationBarBackButtonHidden()
            }
        }
    }
}

#Preview {
    LocationView()
}
