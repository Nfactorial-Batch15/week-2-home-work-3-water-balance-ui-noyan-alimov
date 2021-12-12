//
//  GoalScreen.swift
//  water-balance
//
//  Created by Noyan Alimov on 12/12/2021.
//

import SwiftUI

struct GoalScreen: View {
    var lightBlueColor = Color(red: 212/255, green: 225/255, blue: 248/255)

    var body: some View {
        FormContainer(text: "What is your goal?", form: {
            Goal(text: "Goal number one", selected: true)
            Goal(text: "Goal number two")
            Goal(text: "Goal number three")
            Goal(text: "Goal number four")
        })
    }
}

struct Goal: View {
    var text: String
    var selected: Bool = false
    
    var body: some View {
        HStack {
            Text(text)
                .font(.system(size: 20, weight: .semibold, design: .default))
            Spacer()
            ZStack {
                Circle()
                    .strokeBorder(blueColor, lineWidth: 3)
                    .frame(width: 30, height: 30)
                selected ? Circle()
                    .fill(blueColor)
                    .frame(width: 18, height: 18) : nil
            }
        }
            .padding()
            .background(.white)
            .cornerRadius(16)
    }
}

var blueColor = Color(red: 24/255, green: 104/255, blue: 253/255)

struct GoalScreen_Previews: PreviewProvider {
    static var previews: some View {
        GoalScreen()
    }
}
