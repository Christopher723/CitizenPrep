//
//  HomeScreen.swift
//  hackathon
//
//  Created by Christopher Woods on 10/21/23.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        ZStack{
            
            LinearGradient(gradient: Gradient(colors: [.cyan, Color.blue]), startPoint: .leading, endPoint: .trailing)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .edgesIgnoringSafeArea(.all)
            VStack{
                Text("English Test")
                    .foregroundColor(.black)
                    .bold()
                    .font(.system(size: 40))
                    .padding()
                Spacer().frame(height: 20)
                Text("Speaking Test")
                    .font(.system(size: 17))
                    .padding(EdgeInsets(top: 10, leading: 90, bottom: 10, trailing: 90))
                    .background(.white)
                    .foregroundColor(.black)
                    .cornerRadius(10)
                Text("Reading Test")
                    .font(.system(size: 17))
                    .padding(EdgeInsets(top: 10, leading: 95, bottom: 10, trailing: 95))
                    .background(.white)
                    .foregroundColor(.black)
                    .cornerRadius(10)
                    
                    .padding()
                Text("Writing Test")
                    .font(.system(size: 17))
                    .padding(EdgeInsets(top: 10, leading: 100, bottom: 10, trailing: 100))
                    .foregroundColor(.black)
                    .background(.white)
                    .cornerRadius(10)
            }
        }
    }
}

#Preview {
    HomeScreen()
}
