//
//  ContentView.swift
//  Auto Layout
//
//  Created by João Ricardo Martins Ribeiro on 08/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button(action: {
                print("Botão pressionado")
            }) {
                Text("Logar")
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.orange)
                    .cornerRadius(10)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
