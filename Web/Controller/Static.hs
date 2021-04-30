module Web.Controller.Static where
import           Config
import qualified Data.TMap               as TMap
import           IHP.ApplicationContext
import           Web.Controller.Prelude
import           Web.View.Static.Welcome

redisUrl :: (?applicationContext :: ApplicationContext) =>  RedisUrl
redisUrl = ?applicationContext
        |> get #frameworkConfig
        |> get #appConfig
        |> TMap.lookup @RedisUrl
        |> fromMaybe (error "Could not find RedisUrl in config")

instance Controller StaticController where
    action WelcomeAction = do
      let (RedisUrl str) = redisUrl
      putStrLn ("REDIS_URL = " <> cs str)
      render WelcomeView
