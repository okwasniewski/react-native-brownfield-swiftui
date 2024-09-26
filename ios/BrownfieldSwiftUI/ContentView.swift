//
//  ContentView.swift
//  BrownfieldSwiftUI
//
//  Created by Oskar Kwaśniewski on 26/09/2024.
//

import SwiftUI

//struct ReactNativeView: UIViewRepresentable {
//  var moduleName: String
//  var rootViewFactory: RCTRootViewFactory
//  
//  func makeUIView(context: Context) -> UIView {
//    return rootViewFactory.view(withModuleName: moduleName)
//  }
//  
//  func updateUIView(_ uiView: UIView, context: Context) {
//    // noop
//  }
//}

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}
