//
//  Travel.swift
//  HeroAnimation
//
//  Created by Lucas Silveira on 04/05/21.
//

import Foundation

struct Travel: Identifiable {
    var id: Int
    var image: String
    var title: String
}

extension Travel {
    static var data = [
        Travel(id: 0, image: "p1", title: "London"),
        Travel(id: 1, image: "p2", title: "USA"),
        Travel(id: 2, image: "p3", title: "Canada"),
        Travel(id: 3, image: "p4", title: "Australia"),
        Travel(id: 4, image: "p5", title: "Germany"),
        Travel(id: 5, image: "p6", title: "Dubai"),
    ]
}
