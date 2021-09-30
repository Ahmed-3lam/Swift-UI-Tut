//
//  ContentView.swift
//  Shared
//
//  Created by AhmedAllam on 28/06/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
               
        VStack {
            MapView().ignoresSafeArea(edges:.top).frame(height:300)
            CircleImage().offset(y:-130).padding(.bottom,-130)
            VStack (alignment:.leading){
                Text("Ahmed allam ")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color.blue)
                HStack {
                    Text("Abdullah is sitting ")
                    Spacer()
                    Text("in Monofia")
                        
                }.font(.subheadline).foregroundColor(/*@START_MENU_TOKEN@*/Color.gray/*@END_MENU_TOKEN@*/)
                Divider()
                Text("Ahmed allam ")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color.blue)
                Text("Abdullah is sitting ").font(.subheadline).foregroundColor(/*@START_MENU_TOKEN@*/Color.gray/*@END_MENU_TOKEN@*/)
                Spacer()
               
            
            }.padding()
            Spacer()
        }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
