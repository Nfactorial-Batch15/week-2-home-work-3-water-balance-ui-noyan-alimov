//
//  Title.swift
//  water-balance
//
//  Created by Noyan Alimov on 12/12/2021.
//

import SwiftUI

struct Title: View {
    var text: String = "WATER BALANCE"
    var fontSize: CGFloat = 24
    
    var body: some View {
        Text(text)
            .foregroundColor(Color(red: 5/255, green: 165/255, blue: 239/255))
            .font(.system(size: self.fontSize, weight: .bold, design: .default))
            .italic()
    }
}

struct Title_Previews: PreviewProvider {
    static var previews: some View {
        Title(fontSize: 17)
    }
}
