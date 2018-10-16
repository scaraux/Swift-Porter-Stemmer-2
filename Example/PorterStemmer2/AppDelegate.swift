//
//  AppDelegate.swift
//  PorterStemmer2
//
//  Created by gottingoscar@gmail.com on 10/15/2018.
//  Copyright (c) 2018 gottingoscar@gmail.com. All rights reserved.
//

import Cocoa
import PorterStemmer2

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {



  func applicationDidFinishLaunching(_ aNotification: Notification) {
    if let stemmer = PorterStemmer(withLanguage: .English) {
        print(stemmer.stem("internalization"))
        print(stemmer.stem("architecture"))
        print(stemmer.stem("embroidery"))
    }
  }

  func applicationWillTerminate(_ aNotification: Notification) {
    // Insert code here to tear down your application
  }


}

