import SwiftUI

struct QiblaView: View {
    @ObservedObject var prayerTimesClass = PrayerTimesClass()
    @State private var isQiblaCardPresented = false
    @State private var isRefreshing = false

    var body: some View {
        ZStack {
            Color(red: 0, green: 0.4, blue: 0)
                .ignoresSafeArea()
            Circle()
                .scale(1.8)
                .foregroundColor(.white)
            VStack {
                Text("Vaše koordinate od trenutne lokacije")
                    .font(.headline)

                if let coordinates = prayerTimesClass.currentCoordinates {
                    Text("Latitude: \(coordinates.latitude), Longitude: \(coordinates.longitude)")
                        .padding()
                } else {
                    Text("Koordinate nisu dostupne, dozvolite pristup lokaciji.")
                        .padding()
                }

                // Dugme za osvežavanje
                if !isRefreshing {
                    Button(action: {
                        isRefreshing = true
                        prayerTimesClass.startUpdatingLocation()
                    }) {
                        Text("Osveži")
                            .padding()
                            .background(Color(red: 0, green: 0.4, blue: 0))
                            .border(Color.black, width: 2)
                            .cornerRadius(10)
                            .foregroundColor(Color.white)                    }
                    .onAppear {
                        prayerTimesClass.startUpdatingLocation()
                    }
                    .onDisappear {
                        prayerTimesClass.stopUpdatingLocation()
                    }
                }

                // Dugme za prikaz pravca kible i Quibla Card
                if isRefreshing {
                    Button(action: {
                        // Kada se pritisne, postavi isQiblaCardPresented na true
                        isQiblaCardPresented = true
                    }) {
                        Text("Pogledaj pravac kible")
                            .padding()
                            .background(Color(red: 0, green: 0.4, blue: 0))
                            .border(Color.black, width: 2)
                            .cornerRadius(10)
                            .foregroundColor(Color.white)
                    }
                }
            }
            .sheet(isPresented: $isQiblaCardPresented) {
                QiblaCard()
                    .environmentObject(prayerTimesClass)
            }
        }
    }
}

struct QiblaView_Previews: PreviewProvider {
    static var previews: some View {
        QiblaView()
    }
}
