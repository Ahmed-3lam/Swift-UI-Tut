//
//  LandmarkDetail.swift
//  first
//
//  Created by AhmedAllam on 01/10/2021.
//

import SwiftUI
import MapKit

struct LandmarkDetail: View {
    
    var landmark: Landmark
    var body: some View {
        
        ScrollView {
            
                MapView(coordinate: landmark.locationCoordinate).ignoresSafeArea(edges:.top).frame(height:300)
                
                CircleImage(image: landmark.image).offset(y:-130).padding(.bottom,-130)
                
                VStack (alignment:.leading){
                    Text(landmark.name)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.blue)
                    HStack {
                        Text(landmark.park)
                        Spacer()
                        Text(landmark.state)
                            
                    }.font(.subheadline).foregroundColor(/*@START_MENU_TOKEN@*/Color.gray/*@END_MENU_TOKEN@*/)
                    Divider()
                    
                    Text("About \(landmark.name)")
                        .font(.title2)
                        
                    Text("\(landmark.description) ").font(.subheadline).foregroundColor(/*@START_MENU_TOKEN@*/Color.gray/*@END_MENU_TOKEN@*/)
                    
                   
                
                }.padding()
               
            
            
        }
        .navigationTitle(landmark.name)
                    .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[0])
    }
}
