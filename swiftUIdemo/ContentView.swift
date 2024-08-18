//
//  ContentView.swift
//  swiftUIdemo
//
//  Created by apple on 08/08/24.
//

import SwiftUI

struct ContentView: View {
    @State var name = String()
    @State var password = String()
    var body: some View {
        VStack() {
            Text("Login").font(.largeTitle).padding()
            Text("for user get response").font(.subheadline)
            TextField("username", text: $name).padding().cornerRadius(5.0).background(Color.gray)
            SecureField("password", text: $password).padding().cornerRadius(5.0).background(Color.brown)
            HStack {
                Button("login", action:  {
                debugPrint("login")
                })
                Spacer()
                Button("forgetpass",action: {
                    debugPrint("forgetpass")
                })
            }.padding()
            
            
            
        }
    }
}

#Preview {
    ContentView()
}
