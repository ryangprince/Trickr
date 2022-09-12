//
//  Tip.swift
//  Trickr
//
//  Created by Ryan Prince on 8/17/22.
//

import Foundation

struct Tip: Decodable {
    let text: String
    let children: [Tip]?
}
