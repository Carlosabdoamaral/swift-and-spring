//
//  MessageModel.swift
//  SwiftAndSpring
//
//  Created by Carlos Amaral on 05/01/22.
//

import Foundation

struct MessageModel : Codable {
    let id : Int
    let message : String
    let author : String
}
