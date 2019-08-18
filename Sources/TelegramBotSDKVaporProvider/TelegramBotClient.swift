//
//  TelegramBotClient.swift
//  TelegramBotSDKVaporProvider
//
//  Created by Matteo Piccina on 05/07/18.
//

import Foundation
import Vapor
import TelegramBotSDK

public class TelegramBotClient: Service {
    public var bot: TelegramBot {
        get {
            return router.bot
        }
    }
    public let router: TelegramBotSDK.Router
    
    internal init(router: TelegramBotSDK.Router) {
        self.router = router
    }
    
    public func handleRequest(_ request: Request) throws {
        guard let body = request.http.body.data else { return }
        let update = Update(data: body)
        try router.process(update: update)
    }
}
