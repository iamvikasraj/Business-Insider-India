//
//  ContentView.swift
//  Menu
//
//  Created by Vikas Yadav on 04/02/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // 2. Image (replace with your own image)
            VStack (alignment: .leading, spacing: 0)  {
                HStack {
                    Image("Menu")
                    .resizable()
                    .frame(width: 24, height: 24)

                    Image("logo")
                    .resizable()
                    .frame(width: 167, height: 24)
                    
    //                Text("Business Insider")
    //                    .foregroundColor(.black)
                    Spacer()
                    
                    Image("Search")
                    Image("User")
                }
                .padding(16)
//                .background(.gray)
                
                
                ScrollView(.horizontal)  {
                    HStack  {
                        Image("Menu")
                        .resizable()
                        .frame(width: 24, height: 24)
                        
                        Text("BUSINESS")
                        
                        Image("Menu")
                        .resizable()
                        .frame(width: 24, height: 24)
                        
                        Text("TECH")
                        
                        Image("Menu")
                        .resizable()
                        .frame(width: 24, height: 24)
                        
                        Text("MARKETS")
                        
                        Image("Menu")
                        .resizable()
                        .frame(width: 24, height: 24)
                        
                        Text("REVIEWS")
                    }
                    .font(.system(size: 12))
                    .fontWeight(.semibold)
                    .padding(16)
//                    .background(.green)
                }
            }
        }
        .background(.white)
//        .shadow(color: .gray, radius: 1, x: 0, y: 1)
    
        
        ScrollView(showsIndicators: false) {
                VStack (alignment: .leading) {
                Text ("TOP STORIES")
                .font(.system(size: 20))
                .fontWeight(.bold)
                .foregroundColor(.black)
            
                Spacer(minLength: 24)
                ForEach(0 ... 4, id: \.self) {
                    index in
                    Image(.logo)
                        .frame(width: 343, height: 190)
                        .foregroundColor(.blue)
                        .cornerRadius(8)
                        .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.gray, lineWidth: 0.25)
                            )
                    Spacer(minLength: 16)
                    Text("Nykaa to face competitive heat but its omni-channel experience maybe the game changer")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    Spacer(minLength: 16)
                    VStack(alignment: .leading)
                    {
                        Text("Nykaa  was able to increase its revenue by ₹1,300 crore in the fiscal year 2022.")
                        Spacer(minLength: 16)
                        Text("ICICI Securities anticipates much higher competition for Nykaa in the time to come.")
                        Spacer(minLength: 16)
                        Text("The brokerage recommends investors to hold on to the stock.")
//                        Spacer(minLength: 16)
                    }
                    .font(.system(size: 14))
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
//                    .background(.red)
                    Spacer(minLength: 16)
                    
                    HStack()
                    {
                        Text("Katie Balevic")
                            .font(.system(size: 12))
                            .fontWeight(.semibold)
                            .foregroundColor(.blue)
//                        Spacer(minLength: 2)
                        Text("12 hrs ago")
                            .font(.system(size: 12))
                            .fontWeight(.regular)
                            .foregroundColor(.gray)
                        Spacer()
                        
                        Image("Menu")
                        .resizable()
                        .frame(width: 16, height: 16)
                        
                    }
                    Spacer(minLength: 16)
                    
                    
                    Rectangle()
                        .fill(Color.gray)
                        .frame(width: 343, height: 1)
                    
                    Spacer(minLength: 16)

                }//loop ends here
            } //Vstack ends here
            .padding(16)
            //.background(.blue)
            ZStackLayout(){
                Text("Text")
            }
        }//scrollview ends here
        
        //Text("Footer Ends here")
    }//main view ends here
    
}

#Preview {
    ContentView()
}
