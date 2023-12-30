//
//  LoginView.swift
//  frontend
//
//  Created by Muhedin Alic on 14.12.23.
//

import SwiftUI

struct LoginView: View {
    @State private var username=""
    @State private var password=""
    @State private var wrongUsername: CGFloat = 0
    @State private var wrongPassword: CGFloat = 0
    @State private var showingLoginScreen=false
    @State private var loginMessage = ""
    @State private var isLoginViewPresented = false
    var body: some View {
        NavigationView {
                ZStack{
                    Color(red: 0, green: 0.4, blue: 0)
                        .ignoresSafeArea()
                    Circle()
                        .scale(1.7)
                        .foregroundColor(.white.opacity(0.15))
                    Circle()
                        .scale(1.35)
                        .foregroundColor(.white)
                    VStack{
                        Image("hm")
                            .resizable()
                            .frame(width: 150, height: 150)
                            .aspectRatio(contentMode: .fit)
                        Text("DAILYMUSLIMAPP")
                            .font(.system(size: 15))
                            .bold()
                            .padding()
                        TextField("Korisničko ime", text: $username)
                            .padding()
                            .frame(width: 300, height: 50)
                            .background(Color.black.opacity(0.05))
                            .cornerRadius(10)
                            .border(.red, width: wrongUsername)
                        SecureField("Šifra", text: $password)
                            .padding()
                            .frame(width: 300, height: 50)
                            .background(Color.black.opacity(0.05))
                            .cornerRadius(10)
                            .border(.red, width: wrongPassword)
                        Button("Prijavi se"){
                            authenticateUser(username: username, password: password)
                        }
                        .foregroundColor(.white)
                        .frame(width: 300, height: 50)
                        .background(Color(red: 0, green: 0.4, blue: 0))
                        .cornerRadius(10)
                        
                        NavigationLink(destination: RegisterView()) {
                            HStack {
                                Spacer() // Dodatni Spacer s leve strane
                                Text("Registrujte se")
                                    .foregroundColor(Color(red: 0, green: 0.4, blue: 0))
                                    .padding()
                                Spacer() // Dodatni Spacer s desne strane
                            }
                        }
                        
                        Text(loginMessage)
                            .foregroundColor(.red)
                            .padding()
                        
                        NavigationLink(
                            destination: HomeView(), // Replace YourNextView() with the view you want to navigate to
                            isActive: $showingLoginScreen
                        ) {
                            EmptyView()
                        }                    }
                }
                .navigationBarTitle("", displayMode: .inline)
        }
    }
    // ... ostatak koda

    func authenticateUser(username: String, password: String) {
        if username.lowercased() == "" || password.lowercased() == "" {
            wrongUsername = 2
            wrongPassword = 2
            loginMessage = "Polja ne mogu biti prazna."
            showingLoginScreen = false
        } else {
            guard let url = URL(string: "https://royal-ocean-production.up.railway.app/api/v1/user/login") else {
                print("Invalid URL")
                wrongUsername = 2
                wrongPassword = 2
                loginMessage = "Došlo je do greške prilikom logovanja."
                showingLoginScreen = false
                return
            }

            let credentials = ["username": username, "password": password]
            let jsonData = try? JSONSerialization.data(withJSONObject: credentials)

            var request = URLRequest(url: url)
            request.httpMethod = "POST"
            request.addValue("application/json", forHTTPHeaderField: "Content-Type")
            request.httpBody = jsonData

            URLSession.shared.dataTask(with: request) { data, response, error in
                DispatchQueue.main.async {
                    if let error = error {
                        print("Error: \(error)")
                        wrongUsername = 2
                        wrongPassword = 2
                        loginMessage = "Došlo je do greške prilikom logovanja."
                        showingLoginScreen = false
                    } else if let response = response as? HTTPURLResponse {
                        print("HTTP Status Code: \(response.statusCode)")

                        if response.statusCode == 200 {
                            if let data = data {
                                do {
                                    let responseJSON = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
                                    print("Server Response: \(responseJSON ?? [:])")

                                    if let status = responseJSON?["status"] as? Int, status == 1 {
                                        wrongPassword = 0
                                        showingLoginScreen = true
                                    } else {
                                        wrongPassword = 2
                                        showingLoginScreen = false
                                        loginMessage = "Pogrešno korisničko ime ili lozinka"
                                    }
                                } catch {
                                    print("Error decoding server response: \(error)")
                                }
                            }
                        } else {
                            // Dodajte odgovarajuće postupke za druge status kodove
                            wrongPassword = 2
                            showingLoginScreen = false
                            loginMessage = "Došlo je do greške prilikom logovanja. Proverite svoje podatke."
                        }
                    }
                }
            }.resume()
        }
    }

}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
