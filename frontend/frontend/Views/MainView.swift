import SwiftUI

struct MainView: View {
    init() {
        // Postavljanje boje za dugme za povratak za celu aplikaciju
        UINavigationBar.appearance().backIndicatorImage = UIImage(systemName: "arrow.left.circle.fill")?.withRenderingMode(.alwaysOriginal)
        UINavigationBar.appearance().backIndicatorTransitionMaskImage = UIImage(systemName: "arrow.left.circle.fill")?.withRenderingMode(.alwaysOriginal)
        UINavigationBar.appearance().tintColor = .black  // Postavljanje boje strelice
    }
    
    var body: some View {
        NavigationView {
            VStack {
                    ZStack {
                        LoginView()
                    }
                    }
            .navigationTitle("Početna")
            .navigationBarHidden(true)
        }
        .accentColor(.black) // Postavljanje boje za celu aplikaciju
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

