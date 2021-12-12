//
//  FormContainer.swift
//  water-balance
//
//  Created by Noyan Alimov on 12/12/2021.
//

import SwiftUI

var lightBlueColor = Color(red: 212/255, green: 225/255, blue: 248/255)

struct FormContainer<Form: View>: View {
    var text: String
    var buttonText: String
    var canGoBack: Bool
    
    var form: Form
        
    init(text: String, buttonText: String = "Next", canGoBack: Bool = false, @ViewBuilder form: () -> Form) {
        self.text = text
        self.buttonText = buttonText
        self.canGoBack = canGoBack
        self.form = form()
    }
    
    var body: some View {
        VStack {
            canGoBack ? ZStack {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(blueColor)
            }
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .padding(.leading) : nil
            Spacer()
            Title()
            Spacer()
            Text(text)
                .font(.system(size: 36, weight: .semibold, design: .default))
            VStack(alignment: .leading) {
                VStack(alignment: .leading, spacing: 20) {
                    self.form
                }
                    .padding(.horizontal)
                    .padding(.vertical, 24)
            }
                .background(lightBlueColor)
                .cornerRadius(16)
                .padding()
            Spacer()
            Button(text: buttonText)
        }
    }
}

struct FormContainer_Previews: PreviewProvider {
    static var previews: some View {
        FormContainer(text: "What is your goal?", form: {
            Goal(text: "Goal number one", selected: true)
            Goal(text: "Goal number two")
            Goal(text: "Goal number three")
            Goal(text: "Goal number four")
        })
    }
}
