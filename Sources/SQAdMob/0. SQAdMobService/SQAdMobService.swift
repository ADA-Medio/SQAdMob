// The Swift Programming Language
// https://docs.swift.org/swift-book

public protocol SQAdMobService {
    var interstitialAd: InterstitialAdRepresentable { get }
    
    func setup() async
}




