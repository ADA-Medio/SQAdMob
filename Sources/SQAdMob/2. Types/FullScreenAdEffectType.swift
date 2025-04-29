//
//  File.swift
//  SQAdMob
//
//  Created by Greem on 4/29/25.
//

import Foundation

public enum FullScreenAdEffectType {
    case didDismiss
    case willDismiss
    case adLinkClicked
    case adStart
    case willPresent
    case failed(Error)
}
