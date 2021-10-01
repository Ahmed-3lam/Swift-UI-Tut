//
//  LandmarkList.swift
//  first
//
//  Created by AhmedAllam on 30/09/2021.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        
        NavigationView{
            NavigationLink(destination: LandmarkDetail()){
                List(landmarks){ landmark in
                            LandmarkRow(landmark: landmark)
            }
        
          
               
        }
        .navigationTitle("LandMarks")
        }
        
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
