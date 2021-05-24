//
//  ContentView.swift
//  ImagesFontsColors-01
//
//  Created by Mike Panitz on 5/23/21.
//


// text color is less vibrant on dark mode


/* default background color is black for dark mode
 and white for light mode,
 */

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack{
            Color("Color")
                .edgesIgnoringSafeArea(.all)
        
            VStack{
                Spacer()
                
                Text("253YUP")
                    .bold()
                    .foregroundColor(Color("fontColor"))
                    .font(.title)
                    
                
                
                Image("frisbee")
                    .resizable()
                    .frame(width: 250, height: 250)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                    .shadow(radius: 10)
                    .overlay(ImageOverlay(), alignment: .bottom)
                    .padding()
                
                Text("frisbee event on 3/10/22")
                
                Spacer()
            }
            
                
        
        }
        .font(.title)
    }
}

struct ImageOverlay: View {
    var body: some View {
        ZStack {
            Text("Welcome")
                .font(.callout)
                .foregroundColor(Color.yellow)
                .padding(6)
                .foregroundColor(.white)
        }.background(Color.black)
        .opacity(0.8)
        .cornerRadius(10.0)
        .padding(6)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
