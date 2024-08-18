//
//  imageloader.swift
//  swiftUIdemo
//
//  Created by apple on 08/08/24.
//

import SwiftUI

struct imageloader: View {
    @State private var playStatus : String = "Not playing"
    @State private var isPlaying: Bool = false
    var body: some View {
        VStack {
            
            Image(systemName: "music.note")
                .resizable()
                .frame(width: 200,height: 200,alignment: .topLeading)
                .cornerRadius(20)
                .background(Color.gray)
            
            Image(systemName: "music.note")
                .resizable()
                .frame(width: 200,height: 200,alignment: .topLeading)
                .cornerRadius(20)
                .background(Color.gray)
            
            Text(playStatus).font(.caption).foregroundColor(Color.orange).multilineTextAlignment(.center).lineLimit(0).padding(.all, 20.0)
            HStack {
               
                Button(action:  {
                    debugPrint("Backward button tapped")
                }, label: {
                    Image(systemName: "backward").resizable()
                        .frame(width: 30,height: 30)
                }).padding()
               
                Button(action:  {
                    self.isPlaying.toggle()
                    self.playStatus =  self.isPlaying ? "iday": "dfd"
                    debugPrint("play")
                }, label: {
                    Image(systemName: "play")
                        .resizable()
                        .frame(width: 30,height: 30)
                }).padding()
                
                
                Button(action:  {
                    debugPrint("forward")
                }, label: {
                    Image(systemName: "forward")
                        .resizable()
                        .frame(width: 30,height: 30)
                }).padding()
            }
        }
    }
}

#Preview {
    imageloader()
}
