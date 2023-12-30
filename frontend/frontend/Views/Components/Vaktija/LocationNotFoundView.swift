//
//  LocationNotFoundView.swift
//  frontend
//
//  Created by Muhedin Alic on 16.12.23.
//

import SwiftUI

struct LocationNotFoundView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
      var body: some View {
          ZStack(alignment: .center){
              Color.clear
                  .ignoresSafeArea(.all)
                  .background(.ultraThinMaterial)
              
              VStack(spacing: 30){
                  Image(systemName: "location.fill")
                      .font(.system(size: 88))
                      .foregroundColor(Color(red: 0, green: 0.4, blue: 0))
                  
                  HStack{
                      Text("Trenutna")
                          .font(.title)
                          .fontWeight(.bold)
                          .multilineTextAlignment(.center)
                      
                      Text("Lokacija")
                          .font(.title)
                          .fontWeight(.bold)
                          .foregroundColor(Color(red: 0, green: 0.4, blue: 0))
                          .multilineTextAlignment(.center)
                  }
                  Text("Da biste pristupili namaskim vremenima i kibli preko naše aplikacije, morate uključiti lokaciju.")
                      .font(.system(size: 15))
                      .fontWeight(.light)
                      .multilineTextAlignment(.leading)
                      .padding()
                  
                  Text("Potrebne su nam samo vaše informacije o lokaciji dok koristite aplikaciju. Što nam omogućuje da prikažemo tačno namasko vreme ya vašu lokaciju i ne delimo je nigde.")
                      .font(.system(size: 15))
                      .fontWeight(.light)
                      .multilineTextAlignment(.leading)
                      .padding()
                  
                  Spacer()
                  
                  Button {
                      presentationMode.wrappedValue.dismiss()
                           
                  } label: {
                      Image(systemName: "location.fill")
                          .font(.system(size: 22))
                          .fontWeight(.bold)
                          .foregroundColor(.white)
                      
                      Text("Odustani i vrati se na početnu")
                          .frame(minWidth: 0, maxWidth: .infinity)
                          .foregroundColor(.white)
                  }
                  .padding()
                  .background(Color(red: 0, green: 0.4, blue: 0))
                  .cornerRadius(15)
                  
                  Button {
                      if let url = URL(string: UIApplication.openSettingsURLString){
                          UIApplication.shared.open(url, options: [:], completionHandler: nil)
                      }
                           
                  } label: {
                      Image(systemName: "location.fill")
                          .font(.system(size: 22))
                          .fontWeight(.bold)
                          .foregroundColor(.white)
                      
                      Text("Dozvoli Pristup Lokaciji")
                          .frame(minWidth: 0, maxWidth: .infinity)
                          .foregroundColor(.white)
                  }
                  .padding()
                  .background(Color(red: 0, green: 0.4, blue: 0))
                  .cornerRadius(15)
                  Text("Omogućite pristup Lokaciji u podešavanjima vašeg telefona.")
                      .font(.system(size: 15))
                      .foregroundColor(Color(red: 0, green: 0.4, blue: 0))
              }
              .padding(30)
          }
    }
}

struct LocationNotFoundView_Previews: PreviewProvider {
    static var previews: some View {
        LocationNotFoundView()
            .preferredColorScheme(.light)
    }
}
