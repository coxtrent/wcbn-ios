//
//  ContentView.swift
//  ios-app
// This is certainly the of all ever made in the history.
//  Created by Trenton Cox on 7/18/23.
//

import SwiftUI
import AVKit

/*class AudioPlayerManager: ObservableObject {
    static let shared = AudioPlayerManager()
    var audioPlayer: AVAudioPlayer?
    
    func startBackgroundMusic() {
        if let bundle = Bundle.main.path(forResource: "backgroundMusic", ofType: "mp3") {
            let backgroundMusic = NSURL(fileURLWithPath: bundle)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: backgroundMusic as URL)
                audioPlayer?.numberOfLoops = -1
                audioPlayer?.prepareToPlay()
                audioPlayer?.play()
            } catch {
                print("Error")
            }
        }
    }
} // End AudioPlayerManager
*/

class AudioPlayerManager: ObservableObject {
    var player: AVAudioPlayer?

    func playRadio(from url: URL) {
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch {
            print("Error")
        }
    } // End playRadio

    func resumeRadio() {
        player?.play()
    } // End resumeRadio

    func stopRadio() {
        player?.stop()
    } // End stopRadio

    func pauseRadio() {
        player?.pause()
    } // End pauseRadio


}

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 55/255, green: 32/255, blue: 62/255, opacity: 1)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("MainScreenLogo")
                    .resizable()
                    .frame(width: 102.4, height: 70)
                    .padding()
                Text("Hello, WBCN-FM Ann Arbor!")
                    .foregroundColor(Color(red: 238/255, green: 140/255, blue: 39/255, opacity: 1))
                    .font(.custom("Helvetica Neue", size: 30))
                Spacer()
                HStack {
                    // First button
                    Button(action: {
                        print("Kill youreslves")
                    }) {
                        ZStack {
                            Image("coin")
                                .resizable()
                                .frame(width: 102.4, height: 70)
                            Text("die")
                                .foregroundColor(Color(white: 1))
                        }
                    } // End First Button
                    .padding()
                    // Second button
                    Button(action: {
                        print("Kill youreslves")
                    }) {
                        Image("coin2")
                            .resizable()
                            .frame(width: 102.4, height: 70)
                    } // End Second Button
                    .padding()
                    // Third button
                    Button(action: {
                        print("Kill youreslves")
                    }) {
                        Image("coin3")
                            .resizable()
                            .frame(width: 102.4, height: 70)
                    } // End Third Button
                    .padding()
                }
            }
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
