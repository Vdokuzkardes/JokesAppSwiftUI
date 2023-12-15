//
//  ContentView.swift
//  JokesAppSwiftUI
//
//  Created by Vedat Dokuzkardeş on 6.12.2023.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var JokesVM = JokesViewModel()
    
    
    
    var body: some View {

        NavigationView {
            
            List(JokesVM.jokes) { element in
                
                Text(element.joke)
                
            }
            .toolbar {
                Button(action: addJoke, label: {
                    Text("Get New Joke")
                })
            }
            .navigationTitle(Text("Jokes App"))
            
        }
        
    }
    
    func addJoke(){
        JokesVM.getJokes(count: 1)
    }
}

#Preview {
    ContentView()
}
