//
//  MusicCard.swift
//  task5_app
//
//  Created by Erkam Karaca on 3.09.2023.
//

import SwiftUI

struct MusicCard: View {
    let musicImage: Image
    let musicName: String
    let musicDescription: String
    let isSelected: Bool

    var body: some View {
        HStack {
            musicImage
                .resizable()
                .frame(width: 80, height: 80)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(8)
            VStack(alignment: .leading, spacing: 4) {
                Text(musicName)
                    .font(.headline)
                    .fontWeight(.bold)

                Text(musicDescription)
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
