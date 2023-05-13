//
//  ContentView.swift
//  Fructus
//
//  Created by Jasmine Lai Hweeying on 10/05/2023.
//

import SwiftUI

struct ContentView: View {
    
    var fruit: [Fruit] = fruitsData
    @State private var isShowingSettings: Bool = false
    
    var body: some View {
        NavigationView{
            List{
                ForEach(fruit.shuffled()) { fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)){
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruit")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isShowingSettings = true
                        
                    }){
                        Image(systemName: "slider.horizontal.3")
                        
                    }
                    .sheet(isPresented: $isShowingSettings){
                        SettingsView()
                    }
            )
        }
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
       
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruit: fruitsData)
    }
}
