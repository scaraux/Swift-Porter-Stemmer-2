import XCTest
import PorterStemmer2

class Tests: XCTestCase {

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
        }
    }
}

