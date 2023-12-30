

import SwiftUI
import Adhan


class QiblaCardViewModel: ObservableObject {
    @Published var currentCoordinates: Coordinates?

    var qiblaDirection: Double {
        return currentCoordinates.map { Qibla(coordinates: $0).direction } ?? 0
    }
}

struct QiblaCard: View {
    @ObservedObject var viewModel = QiblaCardViewModel()

    var body: some View {
        let radians = viewModel.qiblaDirection * (.pi / 180)

        return VStack {
            ZStack {
                Color(red: 0, green: 0.4, blue: 0)
                    .navigationTitle("Pravac kible")
                    .ignoresSafeArea()
                Circle()
                    .scale(1.8)
                    .foregroundColor(.white)
                VStack(spacing: 10) {
                    Image("qiblac")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200, height: 200)
                        .overlay(
                            Image(systemName: "arrow.right.circle")
                                .resizable()
                                .frame(width: 200, height: 200)
                                .rotationEffect(Angle(radians: Double(radians)), anchor: .center)
                                .foregroundColor(Color(red: 0, green: 0.4, blue: 0)),
                            alignment: .center
                        )
                }
            }
        }
        .onAppear {
            // Ako želite da osvežite pravac kible kada se pojavi pogled
            // možete postaviti trenutne koordinate ovde.
            // Na primer: viewModel.currentCoordinates = Coordinates(latitude: 43.26666670, longitude: 20.00000000)
        }
    }
}



