//
//  LocationStore.swift
//  TrekrMultiPlatform
//
//  Created by Angus McAloon on 2022-01-18.
//

import Foundation

class LocationStore: ObservableObject {
    var places: [Location]
    
    init() {
        
        //Get a pointer to the file
        let url = Bundle.main.url(forResource: "location", withExtension: "json")!
        
        //Load the contents of the JSON file
        let data = try! Data(contentsOf: url)
        
        //Convert the data from the JSON file into the array
        places = try! JSONDecoder().decode([Location].self, from: data)
        
        //Sort the list of locations alphabeticly by name, in ascending order
        places.sort(by: {
            $0.name < $1.name
        })
    }
}

var testStore = LocationStore()
