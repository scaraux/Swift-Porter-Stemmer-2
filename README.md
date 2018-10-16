# PorterStemmer2 (Swift)

  

A Swift wrapper over the **Porter Stemmer 2** stemming algorithm, using the official C-ANSI **libstemmer** library. This offers stemming with every language supported by the libstemmer library and its algorithms.

  

For more info, visit :

  

- http://snowball.tartarus.org/algorithms/english/stemmer.html
- http://snowball.tartarus.org/index.html

  

***NOTE*** : This first version does not include tests, feel free to implement and submit PR !

  
  

## 📦 Installation

  
  

This project is compatible with macOS, iOS 9 and Swift 4.2.

Swift-PorterStemmer2 is available through [CocoaPods](https://cocoapods.org)

  

To install it, simply add the following line to your Podfile:

  

```ruby

  

pod 'PorterStemmer2', :path => 'git@github.com:scaraux/Swift-Porter-Stemmer-2.git'

  

```

  
  

## 😏 Usage

  
  
  

```swift

import PorterStemmer2

if let stemmer = PorterStemmer(withLanguage: .English) {
	let stem: String = stemmer.stem("engineering")
}

```

  
  

## 👱 Author

  

  

Oscar Gotting, gottingoscar@gmail.com


  

  

## :heart_eyes: Credits

  
  
  

The *libstemmer* library, *Snowball*, *Porter Stemmer* and *Porter Stemmer 2* are open-source libraries that have been developed by Martin Porter. For more information visit http://snowball.tartarus.org. This project is only a wrapper that makes compiling and using the Stemmer algorithm with a Swift environment.

  
  
  

## 🚔 License

  

Swift-Porter-Stemmer-2 is available under the MIT license. See the LICENSE file for more info.