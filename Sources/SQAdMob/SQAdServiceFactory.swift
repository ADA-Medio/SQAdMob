//
//  File.swift
//  SQAdMob
//
//  Created by Greem on 4/29/25.
//

import Foundation

public enum SQAdServiceFactory {
    public static func makeAdMobService() -> SQAdMobService {
        return AdServiceImpl()
    }
}
