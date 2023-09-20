//
//  EditScrumView.swift
//  scrumdinger
//
//  Created by Ibrahim Medhat on 13/09/2023.
//

import SwiftUI

struct EditScrumView: View {
    @Binding  var scrum :DailyScrum
    @State private var newAttendee = ""
    var body: some View {
        Form {
            Section(header: Text("Meeting Info")){
                TextField("Title", text: $scrum.title)
                HStack{
                    Slider(value: $scrum.lengthInMinutes, in:5...30,
                           step: 1){
                        Text("Length")
                    }
                    Spacer()
                    Text("\(Int(scrum.lengthInMinutes)) Minutes")
                }
                ThemePickerView(selectin: $scrum.theme)
            }
            Section (header: Text("Attendees")){
                ForEach(scrum.attendees){
                    attendee in
                    Text(attendee.name)
                }.onDelete{
                    index in
                    scrum.attendees.remove(atOffsets: index)
                }
                
                HStack{
                    TextField("New Attendee", text:$newAttendee)
                    Button(action: {
                        withAnimation{
                            scrum.attendees.append(DailyScrum.Attendee(name: newAttendee))
                            newAttendee = ""
                        }
                    }){
                        Image(systemName: "plus.circle.fill")
                    }.disabled(newAttendee.isEmpty)
                }
            }
        }
    }
}

struct EditScrumView_Previews: PreviewProvider {
    static var previews: some View {
        EditScrumView(scrum: .constant(DailyScrum.sampleData[0]))
    }
}
