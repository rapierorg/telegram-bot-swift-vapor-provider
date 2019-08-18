//
//  TelegramBotConfig.swift
//  TelegramBotSDKVaporProvider
//
//  Created by Matteo Piccina on 05/07/18.
//

import Foundation
import Vapor
import TelegramBotSDK

public struct TelegramBotConfig: Service {
    public let apiToken: String
    public let router: TelegramBotSDK.Router
    
    public init(apiToken: String, routerConfiguration: @escaping (TelegramBotSDK.Router) -> Void) {
        self.apiToken = apiToken
        router = TelegramBotSDK.Router(bot: TelegramBot(token: apiToken), setup: routerConfiguration)
    }
}
