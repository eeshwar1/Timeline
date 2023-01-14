//
//  MonthView.swift
//  Timeline
//
//  Created by Venkateswaran Venkatakrishnan on 1/8/23.
//

import SwiftUI

struct MonthView: View {
    
    @State var month: String
    @State var monthHeight: CGFloat = 20
    @State var padding: CGFloat = 0
    
    @State var eventList: EventList = EventList()
    
    var body: some View {
        
        HStack(spacing: 0) {
            
            Rectangle()
                .fill(.gray)
                .frame(width: 2, height: monthHeight)
            
            HStack {
                
                Rectangle()
                    .fill(.gray)
                    .frame(width: 10, height: 1, alignment: .top)
                Text("\(month)")
                    .font(.system(size: 7))
                
                
            }
            .frame(width: 40, height: 20, alignment: .leading)
            
           VStack {
                ForEach(eventList.getEvents(), id:\.id) {
                    
                    event in
                    VStack {
                        
                        
                        Text(event.name).foregroundColor(.white)
                            .frame(width: 150, alignment: .center)
                            .padding(2)
                            .background(Color.brown).cornerRadius(5)
                            .shadow(color: Color.gray, radius: 2, x: 2, y: 2)
                    }
                    
                }
                
            }
        }
        .padding(padding)
       
    }
   
}

struct MonthView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        let events = [Event(name: "Republic Day", date: "01/26/2021"), Event(name: "New Year 2021", date: "01/01/2021")]
        
        MonthView(month: "Jan", padding: 10, eventList: EventList(events: events))
    }
}
