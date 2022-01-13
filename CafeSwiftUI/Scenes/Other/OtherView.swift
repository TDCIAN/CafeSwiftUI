//
//  OtherView.swift
//  CafeSwiftUI
//
//  Created by JeongminKim on 2022/01/13.
//

import SwiftUI

struct OtherView: View {
    init() {
        UITableView.appearance().backgroundColor = .systemBackground
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(Menu.allCases) { section in
                    Section(
                        header: Text(section.title)
                    ) {
                        ForEach(section.menu, id: \.hashValue) { raw in
                            Text(raw)
                        }
                    }
                }

            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Other")
            .toolbar {
                NavigationLink(
                    destination: Text("Destination"),
                    label: {
                        Image(systemName: "gear")
                    }
                )
            }
        }
    }
}

struct OtherView_Previews: PreviewProvider {
    static var previews: some View {
        OtherView()
    }
}
