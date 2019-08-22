# TelegramBotSDKVaporProvider
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
