//
//  scrumdingerApp.swift
//  scrumdinger
//
//  Created by Ibrahim Medhat on 11/09/2023.
//

import SwiftUI

@main
struct scrumdingerApp: App {
    @State private var scrum = DailyScrum.sampleData
    var body: some Scene {
        WindowGroup {
            i_am_rich_view()
        }
    }
}
