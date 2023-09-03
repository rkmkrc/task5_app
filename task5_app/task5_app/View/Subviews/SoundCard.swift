//
//  SoundCard.swift
//  task5_app
//
//  Created by Erkam Karaca on 3.09.2023.
//

import SwiftUI

struct SoundCard: View {
    let soundName: String
    let soundDescription: String
    let isSelected: Bool

    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 4) {
                Text(soundName)
                    .font(.headline)
                    .fontWeight(.bold)
                Text(soundDescription)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding(.horizontal, 16)
            Spacer()
            if isSelected {
                Image(systemName: "checkmark.circle.fill")
                    .foregroundColor(.green)
                    .font(.system(size: 24))
                    .padding(.trailing, 8)
            }
        }
        .frame(maxWidth: .infinity, minHeight: 60, maxHeight: 100)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
        .padding(8)
    }
}
