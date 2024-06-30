import AVFoundation
import SwiftUI

// notice the URLs do NOT say "low, mid, high" 
enum StreamQuality: String {
    case hi = "https://floyd.wcbn.org:8443/wcbn-hd.mp3"
    case mid = "https://floyd.wcbn.org:8443/wcbn-hi.mp3"
    case lo = "https://floyd.wcbn.org:8443/wcbn-mid.mp3"

    var urlString: String {
        return self.rawValue
    }
}

class AudioPlayerManager: ObservableObject {
    static let shared = AudioPlayerManager()
    private var isPlaying_: Bool = false
    private var player: AVPlayer?

    private init() {} // this creates a singleton instance

    func playRadio(from urlString: String) {
        // guard is used to check if URL is valid, else must exit this scope
        guard let url = URL(string: urlString) else {
            print("Invalid URL")
            return
        }

        // play the radio
        player = AVPlayer(url: url)
        player?.play()
        isPlaying_.toggle()
    } // End playRadio

    func stopRadio() {
        player?.pause()
        player = nil
        isPlaying_.toggle()
    } // End stopRadio

    func resumeRadio() {
        player?.play()
        isPlaying_.toggle()
    } // End resumeRadio

    func pauseRadio() {
        player?.pause()
        isPlaying_.toggle()
    } // End pauseRadio
    
    func isPlaying() -> Bool {
        return isPlaying_
    }
}
