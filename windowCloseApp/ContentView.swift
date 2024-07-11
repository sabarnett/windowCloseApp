//
// -----------------------------------------
// Original project: windowCloseApp
// Original package: windowCloseApp
// Created on: 11/07/2024 by: Steven Barnett
// Web: http://www.sabarnett.co.uk
// GitHub: https://www.github.com/sabarnett
// -----------------------------------------
// Copyright © 2024 Steven Barnett. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var windowNumber: Int = 0
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            
            HostingWindowFinder { window in
                if let window = window {
                    self.windowNumber = window.windowNumber
                }
            }.frame(width: 0, height: 0)
        }
        .padding()
        .onReceive(SysNotifications.willClose, perform: windowClosing)
        .onReceive(SysNotifications.willTerminate, perform: appTerminating)
    }
    
    func windowClosing(value: NotificationCenter.Publisher.Output) {
        guard let win = value.object as? NSWindow,
              win.windowNumber == windowNumber else { return }
        
        print("Window Closing")
    }
    
    func appTerminating(value: NotificationCenter.Publisher.Output) {
        print("Application terminating")
    }
}

#Preview {
    ContentView()
}
