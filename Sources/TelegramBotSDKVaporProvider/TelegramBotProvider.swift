//
//  TelegramBotProvider.swift
//  TelegramBotSDKVaporProvider
//
//  Created by Matteo Piccina on 05/07/18.
//

import Foundation
import Vapor

public final class TelegramBotProvider: Provider {
    public init() { }
    
    public func register(_ services: inout Services) throws {
        services.register { (container) -> TelegramBotClient in
            let config = try container.make(TelegramBotConfig.self)
            return TelegramBotClient(
                router: config.router
            )
        }
    }
    
    public func didBoot(_ container: Container) throws -> EventLoopFuture<Void> {
        return .done(on: container)
    }
    
}
