//
//  TimelineApp.swift
//  Timeline
//
//  Created by Venkateswaran Venkatakrishnan on 1/13/23.
//

import SwiftUI

@main
struct TimelineApp: App {
    
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var events: [Event] = [Event(name: "New Year 2022", date: "01/01/2022"),
                           Event(name: "Jan 10 2022", date: "01/10/2022"),
                           Event(name: "Jan 15 2022", date: "01/15/2022"),
                           Event(name: "Jan 20 2022", date: "01/20/2022"),
                           Event(name: "Republic Day 2022", date: "01/26/2022"),
                           Event(name: "Valentines Day 2022", date: "02/14/2022"),
                           Event(name: "New Year 2021", date: "01/01/2021"),
                           Event(name: "New Year 2023", date: "01/01/2023")]
    
    var body: some Scene {
        WindowGroup {
            ContentView(eventList: EventList(events: events))
        }
    }
}
