//
//  ContentView.swift
//  StartingAnimations
//
//  Created by Stefan Walkner on 06.05.21.
//

import SwiftUI

struct ContentView: View {
    @State private var alignment = Alignment.center

    var body: some View {
        ZStack(alignment: alignment) {
            Color.white
                .edgesIgnoringSafeArea(.all)
            Text("Hello World")
        }
        .edgesIgnoringSafeArea(.bottom)
        .onAppear(perform: onAppearAnimations)
    }

    private func onAppearAnimations() {
//        withAnimation(Animation.easeOut(duration: 1)) { // not sluggish
        withAnimation(Animation.easeOut(duration: 1).delay(1)) { // sluggish
            alignment = .top
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
