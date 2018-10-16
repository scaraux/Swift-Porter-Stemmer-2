//
//  ViewController.swift
//  PorterStemmer2
//
//  Created by gottingoscar@gmail.com on 10/15/2018.
//  Copyright (c) 2018 gottingoscar@gmail.com. All rights reserved.
//

import Cocoa
import PorterStemmer2

class ViewController: NSViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    if let stemmer = PorterStemmer(withLanguage: .English) {
        print(stemmer.stem("internalization"))
        print(stemmer.stem("architecture"))
        print(stemmer.stem("embroidery"))
    }
  }

  override var representedObject: Any? {
    didSet {
    // Update the view, if already loaded.
    }
  }


}

