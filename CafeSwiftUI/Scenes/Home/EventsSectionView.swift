//
//  EventsSectionView.swift
//  CafeSwiftUI
//
//  Created by JeongminKim on 2022/01/13.
//

import SwiftUI

struct EventsSectionView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Events")
                    .font(.headline)
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Text("See all")
                        .accentColor(.green)
                        .font(.subheadline)
                })
            }
            .padding(.horizontal, 16)
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 16) {
                    ForEach(Event.sample) { event in
                        EventSectionItemView(event: event)
                    }
                }
                .frame(maxWidth: .infinity, minHeight: 220, maxHeight: .infinity)
                .padding(.horizontal, 16.0)
            }
        }
    }
}

struct EventSectionItemView: View {
    let event: Event
    
    var body: some View {
        VStack {
            event.image
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width - 32.0 ,height: 150)
                .clipped()
            
            Text(event.title)
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.headline)
            
            Text(event.description)
                .lineLimit(1)
                .font(.callout)
                .frame(width: .infinity, alignment: .topLeading)
        }
        .frame(width: UIScreen.main.bounds.width - 32.0)
    }
}

struct EventsSectionView_Previews: PreviewProvider {
    static var previews: some View {
        EventsSectionView()
    }
}
