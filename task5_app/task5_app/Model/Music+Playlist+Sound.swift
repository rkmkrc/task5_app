//
//  Music+Playlist+Song.swift
//  task5_app
//
//  Created by Erkam Karaca on 3.09.2023.
//

import Foundation

protocol Item: Identifiable, Equatable {
    var id: UUID { get }
    var name: String { get }
    var description: String { get }
}

struct Music: Item {
    let id = UUID()
    let name: String
    let description: String
}

struct Playlist: Item {
    let id = UUID()
    let name: String
    let description: String
}

struct Sound: Item {
    let id = UUID()
    let name: String
    let description: String
}
