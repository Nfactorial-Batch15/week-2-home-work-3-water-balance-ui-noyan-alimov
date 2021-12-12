//
//  TabBar.swift
//  water-balance
//
//  Created by Noyan Alimov on 12/12/2021.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            MainScreen()
                .tabItem {
                    Image(systemName: "house")
                    Text("Main")
                }
            
            SettingsScreen()
                .tabItem {
                    Image(systemName: "slider.horizontal.3")
                    Text("Settings")
                }
            
            HistoryScreen()
                .tabItem {
                    Image(systemName: "doc")
                    Text("History")
                }
        }
            .accentColor(blueColor)
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
