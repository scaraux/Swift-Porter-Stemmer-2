//
//  ViewController.swift
//  PorterStemmer2_Example_iOS
//
//  Created by Oscar Götting on 10/16/18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit
import PorterStemmer2

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let stemmer = PorterStemmer(withLanguage: .English) {
            print(stemmer.stem("internalization"))
            print(stemmer.stem("architecture"))
            print(stemmer.stem("embroidery"))
        }
    }
}

