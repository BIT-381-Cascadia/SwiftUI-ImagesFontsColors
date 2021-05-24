//
//  ContentView.swift
//  ImagesFontsColors-01
//
//  Created by Mike Panitz on 5/23/21.
//

//DAERK MODE: NO CHANGES-The text changes to the color set for dark mode. The bwckground doesn't change though.

//DARK MODE: REMOVED BACKGROUND- The background turn black and the text stands out more. It makes the new color stand out much more.

//The elementd that automatically chnage seem to just be the background color and the text. As long as you create a color set to change the text, it will automatically change.

import SwiftUI

struct ImageOverlay: View {
    var body: some View {
        ZStack {
            Text("Water is the driver of nature")
                .font(.callout)
                .padding(6)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
        }.background(Color.black)
        .opacity(0.5)
        .padding(6)
    }
}


struct ContentView: View {
    var body: some View {
        ZStack{
            Color.yellow.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                Text("Hi Mike!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color("title"))
                    .underline()
                    .multilineTextAlignment(.center)
                Image("nature")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 250, alignment: .top)
                    .border(Color.red, width: 3.5)
                    .overlay(ImageOverlay(), alignment: .bottomTrailing)
                    .padding()
                Text("This is some cool nature.")
                    .fontWeight(.medium)
                    .foregroundColor(Color("title"))
                    .italic()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            //.preferredColorScheme(.dark)
            .preferredColorScheme(.light)
    }
}
