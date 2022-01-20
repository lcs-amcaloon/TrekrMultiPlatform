//
//  TipsList.swift
//  TrekrMultiPlatform
//
//  Created by Angus McAloon on 2022-01-19.
//

import SwiftUI

struct TipsList: View {
    
    //This view creates has its own source of truth
    let tips: [Tip]
    
    var body: some View {
        
        List(tips, id: \.text, children: \.children) { tip in
            
            //If there are children on this particular tip...
            if tip.children != nil {
                Label(tip.text, systemImage: "quote.bubble")
            } else {
                Text(tip.text)
            }
            
        }
        
    }
    
    //Initializer pull tips data from JSON
    //Populates the array
    init() {
        
        //Get a pointer to the file
        let url = Bundle.main.url(forResource: "tips", withExtension: "json")!
        
        //Load the conetents of the JSON file
        let data = try! Data(contentsOf: url)
        
        //Convert the data from the JSON file into the array
        tips = try! JSONDecoder().decode([Tip].self, from: data)
        
    }
    
}

struct TipsList_Previews: PreviewProvider {
    static var previews: some View {
        TipsList()
    }
}
