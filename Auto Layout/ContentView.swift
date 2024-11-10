//
//  ContentView.swift
//  Auto Layout
//
//  Created by João Ricardo Martins Ribeiro on 08/11/24.
//

import SwiftUI

struct ContentView: View {
    @State private var texto: String = ""
    @State private var senha: String = ""
    
    var body: some View {
        VStack {
            Text("Usuário")
            TextField("Seu usuário...", text: $texto)
                .foregroundColor(.white)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)
            
            Text("Senha")
            TextField("Sua Senha...", text: $senha)
                .foregroundColor(.white)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)
                
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
