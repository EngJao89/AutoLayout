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
    @State private var lembrarUsuario: Bool = false
    @State private var isLoggedIn: Bool = false

    var body: some View {
        NavigationStack {
            VStack {
                Text("Usuário")
                TextField("Seu usuário...", text: $texto)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(10)

                Text("Senha")
                SecureField("Sua Senha...", text: $senha)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(10)

                Toggle(isOn: $lembrarUsuario) {
                    Text("Lembrar de usuário")
                        .foregroundColor(.white)
                }
                .padding()

                NavigationLink(destination: DashboardView(), isActive: $isLoggedIn) {
                    Button(action: {
                        print("Botão pressionado")
                        print("Lembrar usuário: \(lembrarUsuario)")
                        isLoggedIn = true  // Navega para a DashboardView
                    }) {
                        Text("Logar")
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.orange)
                            .cornerRadius(10)
                    }
                }
                .buttonStyle(PlainButtonStyle())
            }
            .padding()
            .navigationTitle("Login")
        }
    }
}

#Preview {
    ContentView()
}
