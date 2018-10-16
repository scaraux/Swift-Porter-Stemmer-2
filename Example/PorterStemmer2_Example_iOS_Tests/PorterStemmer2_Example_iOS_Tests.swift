//
//  PorterStemmer2_Example_iOS_Tests.swift
//  PorterStemmer2_Example_iOS_Tests
//
//  Created by Oscar Götting on 10/16/18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import XCTest
import PorterStemmer2

class PorterStemmer2_Example_iOS_Tests: XCTestCase {
    
    func testStemmer() {
        let bundle = Bundle(for: type(of: self))
        
        if let stemmer = PorterStemmer(withLanguage: .English),
            let vocPath = bundle.path(forResource: "voc", ofType: "txt"),
            let outputPath = bundle.path(forResource: "output", ofType: "txt") {
            
            do {
                
                let vocabulary = try String(contentsOfFile: vocPath, encoding: .utf8).components(separatedBy: .newlines)
                let stems = try String(contentsOfFile: outputPath, encoding: .utf8).components(separatedBy: .newlines)
                
                var i = 0
                while (i < vocabulary.count) {
                    let stem = stemmer.stem(vocabulary[i])
                    XCTAssertEqual(stem, stems[i])
                    i += 1
                }
                
            } catch {
                print(error)
            }
        } else {
            XCTAssertTrue(false)
        }
    }

}
