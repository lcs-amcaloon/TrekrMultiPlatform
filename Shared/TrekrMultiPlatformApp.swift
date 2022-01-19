//
//  TrekrMultiPlatformApp.swift
//  Shared
//
//  Created by Angus McAloon on 2022-01-18.
//

import SwiftUI

@main
struct TrekrMultiPlatformApp: App {
    
    @StateObject var store = LocationStore()
    
    var body: some Scene {
        WindowGroup {
            
            TabView {
                
                NavigationView{
                    LocationsList(store: store)
                }
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Location")
                }
                
                NavigationView{
                    WorldMap()
                }
                .tabItem{
                    Image(systemName: "map")
                    Text("Map")
                }
                
                NavigationView{
                    TipsList()
                }
                .tabItem {
                    Image(systemName: "person.fill.questionmark")
                    Text("Tips")
                }
                
            }
            
        }
    }
}
