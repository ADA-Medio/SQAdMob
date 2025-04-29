//
//  File.swift
//  SQAdMob
//
//  Created by Greem on 4/29/25.
//

import Foundation
import GoogleMobileAds

public final class AdServiceImpl: SQAdMobService {
    public lazy var interstitialAd: InterstitialAdRepresentable = InterstitialAdmobImpl()
    
    public func setup() async {
        await withCheckedContinuation { continuation in
            
            MobileAds.shared.start(completionHandler: { status in
                let adapterStatuses = status.adapterStatusesByClassName
                print("adapter size \(adapterStatuses)")
                for (key,value) in adapterStatuses {
                    switch value.state {
                    case .notReady:
                        print("준비가 아직 덜 됨")
                    case .ready:
                        print("준비가 완료됨")
                    @unknown default:
                        assertionFailure("[SQAdMob] 알 수 없는 에러 발생")
                    }
                }
                continuation.resume(returning: ())
            })
            
        }
    }
}
