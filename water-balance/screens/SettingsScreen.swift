//
//  SettingsScreen.swift
//  water-balance
//
//  Created by Noyan Alimov on 12/12/2021.
//

import SwiftUI

struct SettingsScreen: View {
    var body: some View {
        VStack {
            Title(text: "EDIT", fontSize: 17)
            VStack {
                Row(label: "Daily Intake Level") {
                    HStack {
                        Text("2400 ML")
                        Image(systemName: "chevron.right")
                    }
                }
                
                Row(label: "Your goal") {
                    Image(systemName: "chevron.right")
                }
                
                Row(label: "Reminder") {
                    Image(systemName: "chevron.right")
                }
            }
                .padding()
            Spacer()
        }
    }
}

struct Row<Value: View>: View {
    var label: String
    var value: Value
    
    init(label: String, @ViewBuilder value: () -> Value) {
        self.label = label
        self.value = value()
    }
    
    var body: some View {
        VStack {
            HStack {
                Text(label)
                Spacer()
                value
                    .foregroundColor(.gray)
            }
            Divider()
                .opacity(0.5)
        }
            .padding(.top)
    }
}

struct SettingsScre0en_Previews: PreviewProvider {
    static var previews: some View {
        SettingsScreen()
    }
}
