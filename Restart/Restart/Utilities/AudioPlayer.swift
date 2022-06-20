//
//  AudioPlayer.swift
//  Restart
//
//  Created by user on 20/06/22.
//

import Foundation
import AVFoundation

var audioplayer: AVAudioPlayer?

func playSound(name: String, type: String) {
    if let url = Bundle.main.url(forResource: name, withExtension: type) {
        do {
            audioplayer = try AVAudioPlayer(contentsOf: url)
            audioplayer?.play()
        } catch {
            print("Could not play the sound file")
        }
    }
}
