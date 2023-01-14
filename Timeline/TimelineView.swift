//
//  TimelineView.swift
//  Timeline
//
//  Created by Venkateswaran Venkatakrishnan on 1/8/23.
//

import SwiftUI

struct TimelineView: View {
    
    @State var eventList: EventList
    @State var years = ["2021", "2022", "2023"]
    
    var body: some View {
     
        ScrollView {
            
            VStack (spacing: 0) {
                
                ForEach(years.indices, id: \.self) { index in
                    
                    YearView(year: years[index], eventList: EventList(events: getYearEvents(year: years[index])))
                    
                }
               
            }
        }
        .padding()
        .frame(width: 500, alignment: .leading )
        .scrollDisabled(false)
            
    }
    
    func getYearEvents(year: String) -> [Event] {
        
        let yearEvents = eventList.getEvents().filter { $0.date.getYear() == year}
        
        return yearEvents
        
        
    }
}

struct TimelineView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        let events = [Event(name: "New Year 2022", date: "01/01/2022"), Event(name: "New Year 2021", date: "01/01/2021"), Event(name: "New Year 2023", date: "01/01/2023")]
        
        TimelineView(eventList: EventList(events: events))
    }
}


