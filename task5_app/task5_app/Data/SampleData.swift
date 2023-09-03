//
//  SampleData.swift
//  task5_app
//
//  Created by Erkam Karaca on 3.09.2023.
//

import Foundation

let musicData: [Music] = {
    var data: [Music] = []
    for i in 1...10 {
        data.append(Music(name: "Song \(i)", description: "Artist \(i) • Album \(i)"))
    }
    return data
}()

let playlistData: [Playlist] = {
    var data: [Playlist] = []
    for i in 1...10 {
        data.append(Playlist(name: "Playlist \(i)", description: "10 Songs"))
    }
    return data
}()

let soundData: [Sound] = {
    var data: [Sound] = []
    for i in 1...10 {
        data.append(Sound(name: "Sound \(i)", description: "Built-in Sounds"))
    }
    return data
}()




