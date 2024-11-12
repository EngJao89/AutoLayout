//
//  DashboardView.swift
//  Auto Layout
//
//  Created by João Ricardo Martins Ribeiro on 12/11/24.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        VStack {
            Text("Bem-vindo ao Dashboard!")
                .font(.largeTitle)
                .padding()
            Text("Conteúdo do Dashboard aqui")
                .padding()
        }
        .navigationTitle("Dashboard")
    }
}
