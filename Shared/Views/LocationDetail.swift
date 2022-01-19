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
            
            HStack{
                
                Text(location.country)
                    .font(.title)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.leading)
                    .padding(.bottom)
                
                Spacer()
                
            }
            .padding(.horizontal)
            
            Text(location.description)
                .padding(.horizontal)
            
            HStack{
                
                Text("Did You Know?")
                    .font(.title3)
                    .bold()
                    .padding(.vertical)
                
                Spacer()
                
            }
            .padding(.horizontal)
            
            // Conditionally show the travel advisories
            if !location.advisory.isEmpty {
                // show something
                
                HStack{
                    
                    Text("Advisory")
                        .font(.title)
                        .bold()
                        .padding(.vertical)
                    
                    Spacer()
                    
                }
                .padding()
                
                Text(location.advisory)
                    .padding([.horizontal, .bottom])
                
            } else {
                
                //SHow only the locations "more text with bottom padding included"
                Text(location.more)
                    .padding([.horizontal, .bottom])
                
            }
            
        }
        .navigationTitle(location.name)
    }
}

struct LocationDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            LocationDetail(location: testStore.places[2])
        }
    }
}
