//
//  Button.swift
//  water-balance
//
//  Created by Noyan Alimov on 12/12/2021.
//

import SwiftUI

struct Button: View {
    var color = Color(red: 24/255, green: 104/255, blue: 253/255)
    
    var text: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(color)
            Text(text)
                .foregroundColor(.white)
                .fontWeight(.semibold)
                .font(.title)
        }
            .frame(width: 358, height: 58)
            .padding(.top)
            .padding(.bottom)
    }
}

struct Button_Previews: PreviewProvider {
    static var previews: some View {
        Button(text: "Next")
    }
}
