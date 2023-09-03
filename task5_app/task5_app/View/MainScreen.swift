//
//  MainScreen.swift
//  task5_app
//
//  Created by Erkam Karaca on 2.09.2023.
//

import SwiftUI

struct MainScreen: View {
    var body: some View {
        NavigationView {
            TabView {
                AlarmsScreen().tabItem {
                    Label("first_tab", systemImage: "alarm")
                }
                SettingsScreen().tabItem {
                    Label("second_tab", systemImage: "gear")
                }
            }
        }
    }
}

