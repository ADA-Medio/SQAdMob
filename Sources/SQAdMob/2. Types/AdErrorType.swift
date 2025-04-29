//
//  File.swift
//  SQAdMob
//
//  Created by Greem on 4/29/25.
//

import Foundation

public enum AdErrorType: String, Error {
    case emptyUnitID = "광고 유닛 아이디가 비어있습니다."
    case notLoadedAd = "광고가 표시되지 못했습니다."
}
