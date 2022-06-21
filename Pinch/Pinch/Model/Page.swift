//
//  Page.swift
//  Pinch
//
//  Created by user on 21/06/22.
//

import Foundation

struct Page: Identifiable {
    let id: Int
    let imageName: String
}

extension Page {
    var thumbnail: String {
        return "thumb-" + imageName
    }
}
