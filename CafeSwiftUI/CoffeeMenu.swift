//
//  CoffeeMenu.swift
//  CafeSwiftUI
//
//  Created by JeongminKim on 2022/01/13.
//

import SwiftUI

struct CoffeeMenu: Identifiable {
    let id = UUID()
    let image: Image
    let name: String
    
    static let sample: [CoffeeMenu] = [
        CoffeeMenu(image: Image("coffee"), name: "아메리카노"),
        CoffeeMenu(image: Image("coffee"), name: "아이스 아메리카노"),
        CoffeeMenu(image: Image("coffee"), name: "카페라떼"),
        CoffeeMenu(image: Image("coffee"), name: "아이스 카페라떼"),
        CoffeeMenu(image: Image("coffee"), name: "드립커피"),
        CoffeeMenu(image: Image("coffee"), name: "아이스 드립커피")
    ]
}

