//
//  i_am_rich_view.swift
//  scrumdinger
//
//  Created by Ibrahim Medhat on 19/09/2023.
//

import SwiftUI

struct i_am_rich_view: View {
    var body: some View {
        VStack {
            Text("I Am Rich")
                .font(Font.system(size: 60, weight: .bold))
                .foregroundColor(.white)
                .padding( .top,60)
            Image("diamond").resizable().frame(width: 200,height: 200)
                    }.frame(
                        maxWidth: .infinity,
                        maxHeight: .infinity,
                        alignment: .top
                    ).background(
                    Color("hemaColor")
                    )
    }
}

struct i_am_rich_view_Previews: PreviewProvider {
    static var previews: some View {
        i_am_rich_view()
            
    }
}
