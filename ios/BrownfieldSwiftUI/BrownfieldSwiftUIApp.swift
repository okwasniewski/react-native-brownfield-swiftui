import SwiftUI
import React
import React_RCTAppDelegate

struct ReactNativeView: UIViewRepresentable {
  var moduleName: String
  var rootViewFactory: RCTRootViewFactory
  
  func makeUIView(context: Context) -> UIView {
    
    return rootViewFactory.view(withModuleName: moduleName)
  }
  
  func updateUIView(_ uiView: UIView, context: Context) {
    // noop
  }
}

@main
struct BrownfieldSwiftUIApp: App {
  @UIApplicationDelegateAdaptor var delegate: AppDelegate
  
    var body: some Scene {
        WindowGroup {
          TabView {
            ContentView()
              .tabItem {
                Label("Home", systemImage: "house")
              }
            ReactNativeView(
              moduleName: "ReactNativeScreen",
              rootViewFactory: delegate.rootViewFactory
            )
              .tabItem {
                Label("Settings", systemImage: "gear")
              }
          }
        }
    }
}
