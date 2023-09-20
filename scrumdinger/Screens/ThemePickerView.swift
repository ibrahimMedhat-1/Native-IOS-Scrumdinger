//
//  ThemePickerView.swift
//  scrumdinger
//
//  Created by Ibrahim Medhat on 19/09/2023.
//

import SwiftUI

struct ThemePickerView: View {
    @Binding var selectin:Theme
    var body: some View {
        Picker("Theme", selection: $selectin){
            ForEach(Theme.allCases){
                theme in
                ThemeView(theme: theme)
                    .tag(theme)
            }
        }
        .pickerStyle(.navigationLink)
    }
}

struct ThemePickerView_Previews: PreviewProvider {
    static var previews: some View {
        ThemePickerView(selectin: .constant(.periwinkle))
    }
}
