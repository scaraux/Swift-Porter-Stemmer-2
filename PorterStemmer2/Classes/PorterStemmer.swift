//
//  Stemmer.swift
//  LibStemmerSwift
//
//  Created by Oscar Götting on 10/15/18.
//

import Foundation

#if os(Linux)
import Glibc
#else
import Darwin
#endif

public enum StemmerLanguage: CustomStringConvertible {
    
    case Danish
    case Dutch
    case English
    case Finnish
    case French
    case German
    case Hungarian
    case Italian
    case Norwegian
    case Portuguese
    case Romanian
    case Russian
    case Spanish
    case Swedish
    case Turkish
    
    public var description: String {
        switch self {
        case .Danish: return "danish"
        case .Dutch: return "dutch"
        case .English: return "english"
        case .Finnish: return "finnish"
        case .French: return "french"
        case .German: return "german"
        case .Hungarian: return "hungarian"
        case .Italian: return "italian"
        case .Norwegian: return "norwegian"
        case .Portuguese: return "portuguese"
        case .Romanian: return "romanian"
        case .Russian: return "russian"
        case .Spanish: return "spanish"
        case .Swedish: return "swedish"
        case .Turkish: return "turkish"
        }
    }
}

public class PorterStemmer
{
    internal let stemmer: OpaquePointer

    public init?(withLanguage language: StemmerLanguage) {
        if let stemmer = sb_stemmer_new(language.description, nil) {
            self.stemmer = stemmer
        }
        else {
            return nil
        }
    }
    
    deinit {
        sb_stemmer_delete(self.stemmer);
    }
    
    public func stem(_ string: String) -> String {
        guard !string.isEmpty else {
            return("")
        }
        let res: UnsafePointer<sb_symbol> = sb_stemmer_stem(self.stemmer, string, Int32(string.count));
        return String(cString: res)
    }
}

