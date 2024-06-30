//
//  ContentView.swift
//  ios-app
// This is certainly the of all ever made in the history.
//  Created by Trenton Cox on 7/18/23.
//

import SwiftUI

// No but seriously, these are provided by wcbn.org.
// https://www.instagram.com/reel/C8DI98Po-dl/?igsh=MW9ubHlocnFiYTdrdA==



struct ContentView: View {
    @EnvironmentObject var audioPlayerManager: AudioPlayerManager
    @State private var isPlaying = false


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
                        if isPlaying {
                            print("Pausing radio")
                            audioPlayerManager.pauseRadio()
                        } else {
                            print("Resuming radio")
                            audioPlayerManager.resumeRadio()
                        }
                        isPlaying.toggle()
                        }) {
                        VStack {
                            Image("sunCoin")
                                .resizable()
                                .frame(width: 300, height: 300)
                            Text(isPlaying ? "Playing" : "Paused")
                        }
                    }

                    Spacer()
                    HStack {
                        // First button
                        Button(action: {
                            print("Schedule button pressed")
                        }) {
                            ZStack {
                                Image("coin")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                Text("Schedule")
                                    .foregroundColor(Color(white: 1))
                            }
                        } // End First Button
                        // Second button
                        Button(action: {
                            print("Recent button pressed")
                        }) {
                            ZStack {
                                Image("coin2")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                Text("Recent")
                                    .foregroundColor(Color(white: 1))
                            }
                        } // End Second Button
                        // Third button
                        Button(action: {
                            print("Radio button pressed")
                        }) {
                            ZStack {
                                Image("coin3")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                Text("Radio")
                                    .foregroundColor(Color(white: 1))
                            }
                        } // End Third Button
                        Button(action: {
                            print("Favorites button pressed")
                        }) {
                            ZStack {
                                Image("coin2")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                Text("Favorites")
                                    .foregroundColor(Color(white: 1))
                            }
                        } // End Fourth Button
                        Button(action: {
                            print("Settings button pressed")
                        }) {
                            ZStack {
                                Image("coin")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                Text("Settings")
                                    .foregroundColor(Color(white: 1))
                            }
                        } // End Fifth Button
                    }
                }
            }
            .onAppear {
                audioPlayerManager.playRadio(from: StreamQuality.hi.urlString)
                isPlaying = true
            }
            
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
