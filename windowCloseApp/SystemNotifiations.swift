//
// File: SystemNotifiations.swift
// Package: windowCloseApp
// Created by: Steven Barnett on 03/07/2024
// 
// Copyright © 2024 Steven Barnett. All rights reserved.
//

import Foundation
import SwiftUI

struct SysNotifications {

    // System notifications that we want receive.
    static var willClose: NotificationCenter.Publisher {
        NotificationCenter.default.publisher(for: NSWindow.willCloseNotification)
    }
    
    static var willTerminate: NotificationCenter.Publisher {
        NotificationCenter.default.publisher(for: NSApplication.willTerminateNotification)
    }
}
