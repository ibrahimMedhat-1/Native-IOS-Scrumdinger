//
//  I am poor.swift
//  scrumdinger
//
//  Created by Ibrahim Medhat on 20/09/2023.
//

import SwiftUI

struct I_am_poor: View {
    var body: some View {
        VStack{
            Text("I Am Poor")
                .font(Font.system(size: 60,weight: .bold))
                .foregroundColor(.white)
                .padding(.top,60)
            Image("coal")
                .resizable()
                .frame(width: 200,height: 200)
        }.frame(
        maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,
        maxHeight: .infinity,
        alignment: .top
        ).background(Color.gray)
    }
}

#Preview {
    I_am_poor()
}
