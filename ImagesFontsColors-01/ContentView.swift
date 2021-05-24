//
//  ContentView.swift
//  ImagesFontsColors-01
//
//  Created by Mike Panitz on 5/23/21.
//  Modified by Arica Conrad on 5/24/21.
//


// DARK MODE: NO CHANGES

/*

It is pretty interesting to see the screen change to dark mode. The background changed to the dark green/gray color I set it to, but the text automatically changed color. Not setting the text to have a specific font color allows the text to be black in light mode and white in dark mode. That is pretty useful information to have.
 
*/

// DARK MODE: REMOVED BACKGROUND

/*
 
Removing my dark green/gray color and then changing the screen to be dark mode makes the background be black. I am not particularly pleased with this change, as I am not a fan of dark mode having a pure black background. I prefer a dark gray, as it is less harsh on my eyes. All in all, I think I would prefer to specify a dark color for the background instead of relying on black.
 
*/

// FINAL REFLECTION

/*

The elements that were automatically changed were any elements that did not have a color specified for them. If the text or background did not have a specific color set, they were automatically changed to white or black depending on what mode I was in. Something like the border of my panda image, which is set to gray, the system's color, did not change when the mode was adjusted. This automatic change could be quite useful for the text in our app, but as I said above, I do not particularly like the background automatically changing to be pure black.
 
*/

import SwiftUI

struct ThinkingCloud: View {
    var body: some View {
        // The icon is colored white, so that is why you cannot see it if placed anywhere else.
        Image(systemName: "ellipses.bubble")
            .resizable().scaledToFit()
            .frame(width: 40, height: 40)
            .foregroundColor(.white)
    }
}

struct IntrospectivePandaHeading: View {
    var body: some View {
        VStack{
            Text("The Introspective Panda")
                .font(.title)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            Text("A Forest Reflection")
                .font(.title3)
                .underline()
                .padding()
        }
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            IntrospectivePandaHeading()
            Image("IntrospectivePanda").resizable().scaledToFit()
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.gray, lineWidth: 10))
                .overlay(ThinkingCloud())
            Text("Shh... Please be quiet... The panda is thinking...")
                .italic()
                .font(.body)
                .padding()
            Spacer()
        }
        .background(Color("LightGreen"))
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
            //.preferredColorScheme(.light)
    }
}
