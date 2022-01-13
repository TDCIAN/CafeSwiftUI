//
//  HomeView.swift
//  CafeSwiftUI
//
//  Created by JeongminKim on 2022/01/13.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            HomeHeaderView()
            MenuSuggestionSectionView()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
