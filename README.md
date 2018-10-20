# PorterStemmer2 (Swift)


[![CIStatus](https://img.shields.io/travis/scaraux/Swift-Porter-Stemmer-2.svg?style=flat)](https://travis-ci.org/scaraux/Swift-Porter-Stemmer-2) [![Platform](https://img.shields.io/cocoapods/p/PorterStemmer2.svg?style=flat)](https://cocoapods.org/pods/PorterStemmer2) [![Swift 4 support](https://img.shields.io/badge/Swift-4-orange.svg?style=flat)](https://cocoapods.org/pods/PorterStemmer2)

A Swift wrapper over the **Porter Stemmer 2** stemming algorithm, using the official C-ANSI libstemmer library. This offers stemming with every language supported by the libstemmer library and its algorithms.

For more info regarding Porter Stemmer, visit :

- http://snowball.tartarus.org/algorithms/english/stemmer.html
- http://snowball.tartarus.org/index.html

## 📦 Installation

This project is compatible with Swift 4.2, iOS/macOS.


#### Using the Swift-Package-Manager:

Add this repo as a dependency in your *Package.swift* file.

##### Example: 

```
import PackageDescription

let package = Package(
    name: "MyApp",
    dependencies: [
	.package(url: "https://github.com/scaraux/Swift-Porter-Stemmer-2.git", from: "0.1.1"),
    ],
    targets: [
       .target(
            name: "MyApp",
            dependencies: ["PorterStemmer2"]),
    ]
)
```

#### Using CocoaPods

Add the following line to your Podfile, and run ```pod install```.

```ruby
 'PorterStemmer2'
```

## 😏 Usage

```swift
if  let stemmer = PorterStemmer(withLanguage: .English) {
   let stem:  String  = stemmer.stem("engineering")
}
```

## :heart_eyes: Credits

The *libstemmer* library, *Snowball*, *Porter Stemmer* and *Porter Stemmer 2* are open-source libraries that have been developed by Martin Porter. For more information visit http://snowball.tartarus.org. This project is only a wrapper that makes compiling and using the Stemmer algorithm with a Swift environment.

## 🚔 License

Swift-Porter-Stemmer-2 is available under the MIT license. See the LICENSE file for more info.