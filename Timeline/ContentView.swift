//
//  ContentView.swift
//  Timeline
//
//  Created by Venkateswaran Venkatakrishnan on 1/13/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var eventList: EventList = EventList()
    
    var body: some View {
        
        TimelineView(eventList: eventList)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        let events: [Event] = [Event(name: "New Year 2022", date: "01/01/2022"), Event(name: "New Year 2021", date: "01/01/2021"), Event(name: "New Year 2023", date: "01/01/2023")]
               
        ContentView(eventList: EventList(events: events))
    }
}
