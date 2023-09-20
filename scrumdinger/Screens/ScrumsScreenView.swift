//
//  ScrumsView.swift
//  scrumdinger
//
//  Created by Ibrahim Medhat on 12/09/2023.
//

import SwiftUI

struct ScrumsView: View {
    @Binding var scrums : [DailyScrum]
    var body: some View {
        NavigationStack {
            List($scrums,id: \.id){
                $scrum in
                NavigationLink(destination: ScrumDetailView(scrum: $scrum)){
                    CardView(scrum: scrum)
                }
                    .listRowBackground(scrum.theme.mainColor)
            }.navigationTitle("Daily Scrums").toolbar{
                Button(action: {}) {
                                Image(systemName: "plus")
                            }
            }
        }
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumsView(scrums: .constant(DailyScrum.sampleData))
    }
}
