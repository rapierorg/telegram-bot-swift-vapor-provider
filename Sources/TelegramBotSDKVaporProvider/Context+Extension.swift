//
//  TelegramContext+Extension.swift
//  TelegramBotSDKVaporProvider
//
//  Created by Matteo Piccina on 18/08/2019.
//

import Foundation
import Vapor
import TelegramBotSDK

extension Context {
    public var vaporRequest: Request? {
        return self.properties["request"] as? Request
    }
}
