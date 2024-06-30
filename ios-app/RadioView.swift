//
//  ContentView.swift
//  ios-app
// This is certainly the of all ever made in the history.
//  Created by Trenton Cox on 7/18/23.
//

import SwiftUI

// No but seriously, these are provided by wcbn.org.
// https://www.instagram.com/reel/C8DI98Po-dl/?igsh=MW9ubHlocnFiYTdrdA==



struct RadioView: View {
    @EnvironmentObject var audioPlayerManager: AudioPlayerManager
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(red: 55/255, green: 32/255, blue: 62/255, opacity: 1)
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Image("MainScreenLogo")
                        .resizable()
                        .frame(width: 102.4, height: 70)
                        .padding()
                    Text("WBCN-FM Ann Arbor")
                        .foregroundColor(Color(red: 238/255, green: 140/255, blue: 39/255, opacity: 1))
                        .font(.custom("Helvetica Neue", size: 30))
                    Button(action: {
                        if audioPlayerManager.isPlaying() {
                            print("Pausing radio")
                            audioPlayerManager.pauseRadio()
                        } else {
                            print("Resuming radio")
                            audioPlayerManager.resumeRadio()
                        }
                        }) {
                        VStack {
                            Image("sunCoin")
                                .resizable()
                                .frame(width: 300, height: 300)
                        }
                    }
                    Spacer()
                    HStack {
                        Spacer()
                        NavBar()
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) { 
                    if(!audioPlayerManager.isPlaying()) {
                        audioPlayerManager.playRadio(from: StreamQuality.hi.urlString)
                    }
                }
            }
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct RadioView_Previews: PreviewProvider {
    static var previews: some View {
        RadioView()
    }
}
