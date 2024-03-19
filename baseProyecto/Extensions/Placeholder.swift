//
//  Placeholder.swift
//  baseProyecto
//
//  Created by Yael Javier Zamora Moreno on 19/03/24.
//

import Foundation
import SwiftUI

extension View {
    func placeholder(_ text: String, when shouldShow: Bool, alignment: Alignment = .leading) -> some View {
        Text(text).foregroundColor(.gray)
    }
}
