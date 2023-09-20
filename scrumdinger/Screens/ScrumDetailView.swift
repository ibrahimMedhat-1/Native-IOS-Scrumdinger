//
//  ScrumDetailView.swift
//  scrumdinger
//
//  Created by Ibrahim Medhat on 12/09/2023.
//

import SwiftUI

struct ScrumDetailView: View {
    @Binding var scrum : DailyScrum
    @State private var editingScrum = DailyScrum.emptyScrum
    @State var isPresentingEdit : Bool = false
    var body: some View {
        List{
            Section(header: Text("MEETING INFO")){
                NavigationLink(destination: MeetingView()) {
                    Label("Start Meeting",systemImage: "timer")
                        .font(.headline)
                    .foregroundColor(.accentColor)
                }
                HStack{
                    Label("Length",systemImage: "clock")
                    Spacer()
                    Text("\(Int(scrum.lengthInMinutes))")
                }
                HStack{
                    Label("Theme",systemImage: "paintpalette")
                    Spacer()
                    Text(scrum.theme.name)
                        .padding(4)
                        .background(scrum.theme.mainColor)
                        .foregroundColor(scrum.theme.accentColor)
                        .cornerRadius(4)
                }
            }
            Section(header: Text("ATTENDEES")){
                ForEach(scrum.attendees){
                    a in
                    Label(a.name,systemImage: "personya rab")
                }
            }
        }
        .navigationTitle(scrum.title)
        .toolbar{
            Button("Edit", action: {
                isPresentingEdit = true
                editingScrum = scrum
            })
        }
        .sheet(isPresented: $isPresentingEdit){
            NavigationStack {
                EditScrumView(scrum: $editingScrum)
                    .navigationTitle(scrum.title)
                    .toolbar{
                        ToolbarItem(placement: .cancellationAction){
                            Button("Cancel", action: {
                                isPresentingEdit = false
                            })
                        }
                        
                        ToolbarItem(placement: .confirmationAction){
                            Button("Done",action: {
                                isPresentingEdit = false
                                scrum = editingScrum
                            })
                        }}
            }
        }
    }
}

struct ScrumDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ScrumDetailView(
                scrum: .constant(DailyScrum.sampleData[0])
            )
        }
    }
}
