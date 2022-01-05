//
//  ContentView.swift
//  SwiftAndSpring
//
//  Created by Carlos Amaral on 05/01/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var messagesList : [String] = []
    
    var body: some View {
        ZStack {
            VStack {
                
                List {
                }
                
                Button("Ver mensagem") {
                    let url = URL(string: "http://localhost:8080/message")!

                    let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
                        guard let data = data else { return }
                        guard let res = response else { return }

                        print(String(data: data, encoding: .utf8)!)
                    }
                    task.resume()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
