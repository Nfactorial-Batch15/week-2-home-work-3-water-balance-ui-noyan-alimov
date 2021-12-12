//
//  HistoryScreen.swift
//  water-balance
//
//  Created by Noyan Alimov on 12/12/2021.
//

import SwiftUI

struct HistoryScreen: View {
    var body: some View {
        VStack {
            Title(text: "TODAY", fontSize: 17)
            LazyVStack {
                Row(label: "250 ml") {
                    Text("12:13")
                }
                Row(label: "200 ml") {
                    Text("14:1")
                }
                Row(label: "50 ml") {
                    Text("15:13")
                }
                Row(label: "300 ml") {
                    Text("19:10")
                }
            }
                .padding()
            
            Spacer()
        }
    }
}

struct HistoryScreen_Previews: PreviewProvider {
    static var previews: some View {
        HistoryScreen()
    }
}
