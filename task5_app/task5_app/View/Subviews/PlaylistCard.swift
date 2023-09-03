//
//  PlaylistCard.swift
//  task5_app
//
//  Created by Erkam Karaca on 3.09.2023.
//

import SwiftUI

struct PlaylistCard: View {
    let playlistImage: Image
    let playlistName: String
    let playlistDescription: String
    let isSelected: Bool

    var body: some View {
        HStack {
            playlistImage
                .resizable()
                .frame(width: 80, height: 80)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(8)
            VStack(alignment: .leading, spacing: 4) {
                Text(playlistName)
                    .font(.headline)
                    .fontWeight(.bold)

                Text(playlistDescription)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding(.horizontal, 8)
            Spacer()
            if isSelected {
                Image(systemName: "checkmark.circle.fill")
                    .foregroundColor(.green)
                    .font(.system(size: 24))
                    .padding(.trailing, 8)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: 100)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
        .padding(8)
    }
}
