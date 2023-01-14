//
//  YearView.swift
//  Timeline
//
//  Created by Venkateswaran Venkatakrishnan on 1/8/23.
//

import SwiftUI

struct YearView: View {
    
    @State var year: String
    @State var yearHeight: CGFloat = 360.0
    @State var padding: CGFloat = 0
    
    @State var eventList: EventList = EventList()
    
    let months=["Jan","Feb","Mar","Apr","May",
                    "Jun","Jul","Aug","Sep","Oct",
                    "Nov","Dec"]
    
    var body: some View {
        
        HStack(spacing: 0) {
            
            Text("\(year)")
                .offset(.init(width: 0, height: -yearHeight/2 + 10))
                .bold()
                .frame(width: 30, height: 10, alignment: .leading)
                .font(.system(size: 10))
            
            
            VStack(spacing: 0) {
                ForEach(months.indices, id: \.self) { index in
                    
                    MonthView(month: months[index], eventList:
                                EventList(events: getMonthEvents(month: months[index])))
                }
                .frame(width: 400, alignment: .leading)
                
            }
        }
        .frame(width: 500, height: yearHeight, alignment: .leading)
        
    }
    
    
    func getMonthEvents(month: String) -> [Event] {
        
        let monthEvents = eventList.getEvents().filter { $0.date.getMonth() == month}
        
        return monthEvents
        
        
    }
}

struct YearView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        let events = [Event(name: "New Year 2021", date: "01/01/2022"), Event(name: "Valentines Day 2021", date: "02/14/2021")]
        
        YearView(year: "2021", padding: 10, eventList: EventList(events: events))
    }
}
