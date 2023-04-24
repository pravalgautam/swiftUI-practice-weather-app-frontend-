//
//  ContentView.swift
//  WEATherSWiftui
//
//  Created by Praval Gautam on 12/03/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(colors: [.blue,.white], startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
            VStack{
                Text("Kanpur")
                    .foregroundColor(Color.white)
                    .font(.system(size: 32,weight: .medium,design: .default))
                
                
                VStack(spacing: 10){
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180,height: 180)
                    Text("76°")
                        .foregroundColor(Color.white)
                        .font(.system(size: 62,weight: .medium,design: .default))
                        .padding()
                    
                }
                .padding(.bottom,40)
                
                HStack(spacing: 10){
                    weatherDay(dayOfWeek: "WED", imageName: "sun.max.fill", Temperature: 76)
                    weatherDay(dayOfWeek: "Tfree", imageName: "snow", Temperature: 76)
                    weatherDay(dayOfWeek: "TUEefe", imageName: "sun.max.fill", Temperature: 76)
                    weatherDay(dayOfWeek: "TUE", imageName: "wind.snow", Temperature: 76)
                    weatherDay(dayOfWeek: "TUE", imageName: "cloud.sun.fill", Temperature: 76)
                 
                }
                Spacer()
                Button {
                    print("")
                } label: {
                    Text("WEATHER")
                        .frame(width:280,height:50)
                        .background(LinearGradient(colors: [.white], startPoint: .topLeading, endPoint: .bottomTrailing))
                        .font(.system(size: 13,weight: .medium ,design: .default))
                        .cornerRadius(20)
                }
                Spacer()

                
                
            }
            
        }
    }
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
    
    struct weatherDay: View {
        
        var dayOfWeek: String
        var imageName: String
        var Temperature: Int
        
        var body: some View {
            VStack{
                Text(dayOfWeek)
                    .foregroundColor(Color.white)
                    .font(.system(size: 15,weight: .medium,design: .default))
                
                Image(systemName: imageName)
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40,height: 40)
                Text("\(Temperature)°")
                    .foregroundColor(Color.white)
                    .font(.system(size: 20,weight: .medium,design: .default))
            }
            Spacer()
            
        }
    }
}
