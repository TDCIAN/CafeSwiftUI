//
//  HomeHeaderView.swift
//  CafeSwiftUI
//
//  Created by JeongminKim on 2022/01/13.
//

import SwiftUI

struct HomeHeaderView: View {
    var body: some View {
        VStack {
            HStack {
                Text("""
                아이고 손님~
                반갑습니다!☕️
                """)
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "arrow.2.circlepath")
                })
            }
            
            HStack {
                
            }
        }
    }
}

struct HomeHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HomeHeaderView()
    }
}
