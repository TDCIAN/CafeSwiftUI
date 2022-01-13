//
//  SettingView.swift
//  CafeSwiftUI
//
//  Created by JeongminKim on 2022/01/14.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        List {
            Section {
                SettingUserInfoSectionView()
            }
            Button(action: {
                
            }, label: {
                Text("회원 정보 수정")
                    .font(.body)
                    .accentColor(.black)
            })
            
            Button(action: {
                
            }, label: {
                Text("회원 탈퇴")
                    .font(.body)
                    .accentColor(.black)
            })
        }
        .navigationTitle("설정")
        .listStyle(GroupedListStyle())
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct SettingUserInfoSectionView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 4.0) {
                Text(User.shared.username)
                    .font(.title)
                Text(User.shared.account)
                    .font(.caption)
            }
            
            Spacer()
            
            Button(action: {
                
            }, label: {
                Text("로그아웃")
                    .accentColor(.green)
                    .font(.system(size: 14, weight: .bold, design: .default))
                    
            })
            .padding(8)
            .overlay(Capsule().stroke(Color.green))
            
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
