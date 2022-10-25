//
//  ContentView.swift
//  fiveletter
//
//  Created by Jake Kelman on 10/24/22.
//

import SwiftUI

class UserData: ObservableObject {
    private init() {}
    static let shared = UserData()
    
    @Published var isSignedIn : Bool = false
}

struct SignInButton: View {
    var body: some View {
        Button(action: { Backend.shared.signIn() }){
            HStack {
                Image(systemName: "person.fill")
                    .scaleEffect(1.5)
                    .padding()
                Text("Sign In")
                    .font(.largeTitle)
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.green)
            .cornerRadius(30)
        }
    }
}

struct SignOutButton : View {
    var body: some View {
        Button(action: { Backend.shared.signOut() }) {
                Text("Sign Out")
        }
    }
}

struct MainMenu: View {
    @ObservedObject private var userData: UserData = .shared
    
    var body: some View {

        ZStack {
            if (userData.isSignedIn) {
                NavigationView {
                    List {

                    }
                    .navigationBarTitle(Text("Notes"))
                    .navigationBarItems(leading: SignOutButton())
                }
            } else {
                SignInButton()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainMenu()
    }
}
