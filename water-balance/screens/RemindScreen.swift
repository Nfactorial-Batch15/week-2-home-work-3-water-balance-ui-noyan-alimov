//
//  RemindScreen.swift
//  water-balance
//
//  Created by Noyan Alimov on 12/12/2021.
//

import SwiftUI

struct RemindScreen: View {
    var body: some View {
        FormContainer(text: "Remind me each", canGoBack: true, form: {
            HStack {
                Selection(text: "15 minutes")
                Spacer()
                Selection(text: "30 minutes")
            }
            
            HStack {
                Selection(text: "45 minutes")
                Spacer()
                Selection(text: "1 hour")
            }
            
            HStack {
                Selection(text: "1,5 hours", selected: true)
                Spacer()
                Selection(text: "2 hours")
            }
            
            HStack {
                Selection(text: "3 hours")
                Spacer()
                Selection(text: "4 hours")
            }
        })
    }
}

struct Selection: View {
    var text: String
    var selected: Bool = false
    
    var body: some View {
        ZStack {
            Text(text)
                .font(.system(size: 20, weight: .semibold, design: .default))
        }
            .frame(width: 120, height: 40, alignment: .center)
            .padding()
            .background(.white)
            .cornerRadius(16)
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(selected ? blueColor : Color.clear, lineWidth: 4)
            )
    }
}

struct RemindScreen_Previews: PreviewProvider {
    static var previews: some View {
        RemindScreen()
    }
}
