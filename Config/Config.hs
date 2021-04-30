module Config where

import           IHP.Environment
import           IHP.FrameworkConfig
import           IHP.Prelude

newtype RedisUrl = RedisUrl String

config :: ConfigBuilder
config = do
    option Development
    option (AppHostname "localhost")
    option (RedisUrl "redisURL")
