## Error

```
Web/Controller/Static.hs:17:28: error:
    • Could not deduce: ?applicationContext::ApplicationContext
        arising from a use of ‘redisUrl’
      from the context: (?context::ControllerContext,
                         ?modelContext::ModelContext, ?theAction::StaticController)
        bound by the type signature for:
                   action :: (?context::ControllerContext,
                              ?modelContext::ModelContext, ?theAction::StaticController) =>
                             StaticController -> IO ()
        at Web/Controller/Static.hs:16:5-10
    • In the expression: redisUrl
      In a pattern binding: (RedisUrl str) = redisUrl
      In the expression:
        do let (RedisUrl str) = redisUrl
           putStrLn ("REDIS_URL = " <> cs str)
           render WelcomeView
   |
17 |       let (RedisUrl str) = redisUrl
   |
```

## System Info

```
$ ihp-new --version
ihp-new version: 1.3.0

$ nixos-version 
20.09.3398.f26c6ddc472 (Nightingale)
```
