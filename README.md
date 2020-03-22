<p align="center">
    <a href="https://swift.org"><img src="https://img.shields.io/badge/Swift-5.0-orange.svg" alt="Swift" /></a>
    <a href="https://telegram.me/swiftsdkchat"><img src="https://img.shields.io/badge/Chat-Telegram-lightgrey.svg" alt="Chat" /></a>
    <a href="https://swift.org"><img src="https://img.shields.io/badge/OS-macOS%2C%20Linux-lightgrey.svg" alt="Platform" /></a>
    <a href="https://tldrlegal.com/license/mit-license"><img src="https://img.shields.io/badge/License-Apache%202.0-blue.svg" alt="License" /></a>
</p>

# TelegramBotSDK Vapor Provider
### This package is part of [TelegramBotSDK](https://github.com/rapierorg/telegram-bot-swift)


You need just to add these lines to your Vapor app:
### File: Package.swift
- Add `.package(url: "https://github.com/rapierorg/telegram-bot-swift-vapor-provider.git", from: "0.2.1"),`
- Add `TelegramBotSDKVaporProvider` to your `App` target dependencies

### File: configure.swift
Add the following lines to your configure function:
```swift
services.register(TelegramBotConfig(apiToken: "your-api-token-here", routerConfiguration: { (router) in
    // Configure TelegramBotSDK router here
}))
try services.register(TelegramBotProvider())
```

### File: routes.swift
```swift
router.post("change", "me") { (request) -> HTTPStatus in // Change route
    let telegramClient = try request.make(TelegramBotClient.self)
    try telegramClient.handleRequest(request)
    return .ok
}
```

### Optional: boot.swift
```swift
let telegramClient = try app.make(TelegramBotClient.self)
telegramClient.bot.setWebhookSync(url: "your-webhook-url-here")
```
