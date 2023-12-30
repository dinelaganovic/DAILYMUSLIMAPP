//
//  RegisterView.swift
//  frontend
//
//  Created by Muhedin Alic on 14.12.23.
//

import SwiftUI

struct RegisterView: View {
    
    @State private var username=""
    @State private var password=""
    @State private var email=""
    @State private var wrongUsername: CGFloat = 0
    @State private var wrongPassword: CGFloat = 0
    @State private var wrongEmail: CGFloat = 0
    @State private var showingLoginScreen=false
    @State private var registerMessage = ""
    @State private var isViewPresented = false
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
                    Text("KREIRAJTE NALOG")
                        .font(.system(size: 15))
                        .bold()
                        .padding()
                    TextField("Email", text: $email)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: wrongEmail)
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
                    Button("Registrujte se"){
                        registerUser(username: username, password: password, email:email)
                    }
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color(red: 0, green: 0.4, blue: 0))
                    .cornerRadius(10)
                    
                    Text(registerMessage)
                        .foregroundColor(.red)
                        .padding()
                    
                    NavigationLink(destination: Text(" Registrovali ste se! @\(username)"),
                                   isActive: $showingLoginScreen){
                        EmptyView()
                    }
                }
            }
        }
    }
    func registerUser(username: String, password: String, email: String) {
        guard let url = URL(string: "https://royal-ocean-production.up.railway.app/api/v1/user/save") else {
            print("Invalid URL")
            wrongUsername = 2
            wrongPassword = 2
            wrongEmail = 2
            registerMessage = "Došlo je do greške prilikom registracije."
            showingLoginScreen = false
            return
        }

        let userData = ["username": username, "password": password, "email": email]
        let jsonData = try? JSONSerialization.data(withJSONObject: userData)

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
                    wrongEmail = 2
                    registerMessage = "Došlo je do greške prilikom registracije."
                    showingLoginScreen = false
                } else if let response = response as? HTTPURLResponse {
                    print("HTTP Status Code: \(response.statusCode)")

                    if response.statusCode == 200 {
                        // Uspesna registracija
                        wrongUsername = 0
                        wrongPassword = 0
                        wrongEmail = 0
                        registerMessage = "Uspešno ste se registrovali!"
                        showingLoginScreen = true
                    } else {
                        // Dodajte odgovarajuće postupke za druge status kodove
                        wrongUsername = 2
                        wrongPassword = 2
                        wrongEmail = 2
                        registerMessage = "Došlo je do greške prilikom registracije. Proverite svoje podatke."
                        showingLoginScreen = false
                    }
                }
            }
        }.resume()
    }

    
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
