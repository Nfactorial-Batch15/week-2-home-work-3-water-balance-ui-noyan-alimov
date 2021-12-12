//
//  MainScreen.swift
//  water-balance
//
//  Created by Noyan Alimov on 12/12/2021.
//

import SwiftUI

struct MainScreen: View {
    var body: some View {
        VStack {
            Title(fontSize: 17)
                .padding(.bottom, 30)
            VStack {
                VStack {
                        VStack {
                            Text("0 %")
                                .font(.system(size: 36, weight: .bold, design: .default))
                                .padding(.bottom)
                            ZStack {
                                Image("waterLight")
                                Image("waterDark")
                                Text("0 out of 2,4 L")
                                    .foregroundColor(.white)
                            }
                        }
                            .frame(width: 180, height: 180)
                            .overlay(
                                Circle()
                                    .stroke(.white, lineWidth: 4)
                            )
                    
                    Text("Monday, 25th of November")
                        .padding(.top, 30)
                }
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 332)
                    .background(
                            LinearGradient(gradient: Gradient(colors: [lightBlueColor, .white]), startPoint: .top, endPoint: .bottom)
                    )
                    .cornerRadius(16)
                
                Text("Add your first drink for today")
                    .font(.system(size: 36, weight: .semibold, design: .default))
                    .multilineTextAlignment(.center)
                
                Spacer()
                
                Button(text: "Add")
            }
                .padding()
        }
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
