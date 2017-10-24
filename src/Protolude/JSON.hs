module Protolude.JSON
    ( decode
    , encode) where

import           Data.Aeson
import           Data.Either    (Either (..), either)
import           Data.Text      (Text)
import           Prelude        ((.))
import           Protolude.Conv

decodeJSON :: FromJSON a => Text -> Either Text a
decodeJSON = either (Left . toS) Right . eitherDecodeStrict' . toS

encodeJSON :: ToJSON a => a -> Text
encodeJSON = toS . encode
