//
//  DailyIntakeScreen.swift
//  water-balance
//
//  Created by Noyan Alimov on 12/12/2021.
//

import SwiftUI

struct DailyIntakeScreen: View {
    var body: some View {
        FormContainer(text: "Daily intake?", buttonText: "Save", canGoBack: true) {
            HStack(alignment: .center, spacing: 12) {
                ZStack {
                    TextField("", text: .constant("2400"))
                        .keyboardType(.numberPad)
                        .foregroundColor(blueColor)
                        .font(.system(size: 16, weight: .bold, design: .default))
                }
                    .padding()
                    .background(.white)
                    .multilineTextAlignment(.center)
                    .cornerRadius(16)
                
                Text("ML")
                    .padding(.trailing, 43)
            }
        }
    }
}

struct DailyIntakeScreen_Previews: PreviewProvider {
    static var previews: some View {
        DailyIntakeScreen()
    }
}
