//
//  LocationDetail.swift
//  TrekrMultiPlatform
//
//  Created by Angus McAloon on 2022-01-18.
//

import SwiftUI

struct LocationDetail: View {
    
    // The location to show details about
    // A copy of an instanceof a structure will be provided to this view
    let location: Location
    
    var body: some View {
        ScrollView{
            Image(location.heroPicture)
                .resizable()
                .scaledToFit()
        }
        .navigationTitle(location.name)
    }
}

struct LocationDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            LocationDetail(location: Location.example)
        }
    }
}
