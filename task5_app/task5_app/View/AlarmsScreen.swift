//
//  AlarmsScreen.swift
//  task5_app
//
//  Created by Erkam Karaca on 2.09.2023.
//

import SwiftUI

import SwiftUI

struct AlarmsScreen: View {
    @State private var selectedScope = 0
    @State private var selectedMusic: Music? = nil
    @State private var selectedPlaylist: Playlist? = nil
    @State private var selectedSound: Sound? = nil
    
    var body: some View {
        VStack {
            Picker(selection: $selectedScope, label: Text("Filter")) {
                Text("Sounds").tag(0)
                Text("Playlists").tag(1)
                Text("Songs").tag(2)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding(15)
            if selectedScope == 0 {
                ScrollView {
                    LazyVGrid(columns: [GridItem(.flexible())]) {
                        ForEach(soundData) { sound in
                            SoundCard(
                                soundName: sound.name,
                                soundDescription: sound.description,
                                isSelected: selectedSound == sound
                            )
                            .onTapGesture {
                                selectedSound = sound
                            }
                        }
                    }.padding(10)
                }.frame(maxHeight: .infinity)
            }
            if selectedScope == 1 {
                ScrollView {
                    LazyVGrid(columns: [GridItem(.flexible())]) {
                        ForEach(playlistData) { playlist in
                            PlaylistCard(
                                playlistImage: Image("playlist"), // Replace with actual image
                                playlistName: playlist.name,
                                playlistDescription: playlist.description,
                                isSelected: selectedPlaylist == playlist
                            )
                            .onTapGesture {
                                selectedPlaylist = playlist
                            }
                        }
                    }.padding(10)
                }.frame(maxHeight: .infinity)
            }
            if selectedScope == 2 {
                ScrollView {
                    LazyVGrid(columns: [GridItem(.flexible())]) {
                        ForEach(musicData) { music in
                            MusicCard(
                                musicImage: Image("music"),
                                musicName: music.name,
                                musicDescription: music.description,
                                isSelected: selectedMusic == music
                            )
                            .onTapGesture {
                                selectedMusic = music
                            }
                        }
                    }.padding(10)
                }.frame(maxHeight: .infinity)
            }
            Spacer()
        }
    }
}

