//
//  MessageControllerExtension.swift
//  SwiftAndSpring
//
//  Created by Carlos Amaral on 05/01/22.
//

import Foundation

func GetMessage() -> String {
    var message : String = ""
    let url = URL(string: "http://localhost:8080/message")!

    let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
        guard let data = data else { return }
        print(String(data: data, encoding: .utf8)!)
        message = String(data: data, encoding: .utf8)!
    }
    
    task.resume()
    return message
}
